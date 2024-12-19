<script>
	import { fade } from 'svelte/transition'
</script>

<section transition:fade>
	<div class="loader">
		<li class="ball"></li>
		<li class="ball"></li>
		<li class="ball"></li>
	</div>
	<h1>Loading</h1>
</section>

<style>
	section {
		z-index: var(--z-loading);
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

	.loader {
		width: 60px;
		display: flex;
		justify-content: space-evenly;
	}

	.ball {
		list-style: none;
		width: 12px;
		height: 12px;
		border-radius: 50%;
		background-color: var(--text-color);
	}

	.ball:nth-child(1) {
		animation: bounce-1 2.1s ease-in-out infinite;
	}

	@keyframes bounce-1 {
		50% {
			transform: translateY(-90px);
			scale: 0.3;
		}
	}

	.ball:nth-child(2) {
		animation: bounce-3 2.1s ease-in-out 0.3s infinite;
	}

	@keyframes bounce-2 {
		50% {
			transform: translateY(-90px);
			scale: 0.3;
		}
	}

	.ball:nth-child(3) {
		animation: bounce-3 2.1s ease-in-out 0.6s infinite;
	}

	@keyframes bounce-3 {
		50% {
			transform: translateY(-90px);
			scale: 0.3;
		}
	}
</style>
