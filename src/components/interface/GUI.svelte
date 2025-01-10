<script>
	import { fade } from 'svelte/transition'
</script>

<section class="gap-1 gui-h" transition:fade>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
</section>

<style>
	section {
		background-color: var(--color-bg);
		color: var(--color-text);
	}

	div {
		width: var(--gui-h);
		border: var(--border);
		border-radius: var(--radius-2);
	}
</style>
