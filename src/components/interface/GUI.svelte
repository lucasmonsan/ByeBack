<script>
	import { fade } from 'svelte/transition'
</script>

<section class="gui-h gap-1 bg-color-bg color-text" transition:fade>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
</section>

<style>
	div {
		width: var(--gui-h);
		border: var(--border);
		border-radius: var(--radius-2);
	}
</style>
