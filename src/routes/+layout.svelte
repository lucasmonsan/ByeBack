<script>
	import '$lib/styles/variables.css'
	import '$lib/styles/palette.css'
	import '$lib/styles/texts.css'
	import Loading from '../components/layout/Loading.svelte'
	import { isLoading } from '$lib/stores/loadingStore'
</script>

<slot />

{#if $isLoading}
	<Loading />
{/if}
