<script>
	import '$lib/styles/fonts.css'
	import '$lib/styles/variables.css'
	import '$lib/styles/palette.css'
	import '$lib/styles/reset.css'
	import '$lib/styles/tags.css'
	import '$lib/styles/classes.css'
	import HUD from '../components/interface/HUD.svelte'
	import GUI from '../components/interface/GUI.svelte'
	import { onMount } from 'svelte'

	let screenWidth = 0

	onMount(() => {
		screenWidth = window.innerWidth
	})
</script>

{#if screenWidth > 768}
	<slot />
	<section>
		<HUD />
		<GUI />
	</section>
{:else if screenWidth > 0}
	<HUD />
	<slot />
	<GUI />
{/if}

<style>
	section {
		display: flex;
		gap: var(--gap-2);
	}
</style>
