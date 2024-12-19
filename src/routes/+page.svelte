<script>
	import { onMount } from 'svelte'
	import Footer from '../components/layout/Footer.svelte'
	import Header from '../components/layout/Header.svelte'
	import Splash from '../components/layout/Splash.svelte'
	import Title from '../components/layout/Title.svelte'
	import Game from '../components/layout/Game.svelte'
	import Settings from '../components/layout/Settings.svelte'

	let visible_header = false
	let visible_splash = false
	let visible_title = false
	let visible_settings = false
	let visible_game = false
	let visible_footer = false

	onMount(() => {
		visible_splash = true
		document.documentElement.classList.add('theme-1')
	})
</script>

{#if visible_header}
	<Header />
{/if}

{#if visible_splash}
	<Splash />
{/if}

{#if visible_title}
	<Title />
{/if}

{#if visible_settings}
	<Settings />
{/if}

{#if visible_game}
	<Game />
{/if}

{#if visible_footer}
	<Footer />
{/if}

<style>
</style>
