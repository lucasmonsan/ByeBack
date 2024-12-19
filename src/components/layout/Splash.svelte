<script>
	import { fade } from 'svelte/transition'
</script>

<section transition:fade>
	<img src="favicon.png" alt="" />
	<h1>ByeBack</h1>
</section>

<style>
	section {
		z-index: var(--z-splash);
		position: fixed;
		top: 0;
		left: 0;
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		width: 100%;
		height: 100%;
		background-color: var(--bg-color);
	}
</style>
