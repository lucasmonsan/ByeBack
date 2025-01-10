<script>
	import { fade } from 'svelte/transition'
</script>

<section class="w-100 hud-h gap-1 padd-1 border radius-2" transition:fade>
	<div></div>
	<div class="w-100"></div>
	<div></div>
</section>

<style>
	section {
		background-color: var(--color-bg);
		color: var(--color-text);
	}

	div {
		&:nth-child(1) {
			width: calc(var(--base) * 2);
		}

		&:nth-child(3) {
			width: calc(var(--base) * 10);
		}
	}
</style>
