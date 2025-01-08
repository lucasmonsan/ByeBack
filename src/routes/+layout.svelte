<script>
	import '$lib/styles/variables.css'
	import '$lib/styles/palette.css'
	import '$lib/styles/reset.css'
	import Header from '../components/Header.svelte'
	import Footer from '../components/Footer.svelte'
	import { onMount } from 'svelte'

	let screenWidth = 0

	onMount(() => {
		screenWidth = window.innerWidth
	})
</script>

{#if screenWidth > 768}
	<slot />
	<section>
		<Header />
		<Footer />
	</section>
{:else}
	<Header />
	<slot />
	<Footer />
{/if}

<style>
	section {
		display: flex;
		gap: calc(var(--base) * 0.5);
	}
</style>
