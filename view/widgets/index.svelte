<script>
  export let widgets = []

  import Time from 'svelte-time';
</script>

<h1>Widget Index</h1>

<p>Page load time: <Time relative timestamp={new Date()} /></p>

<table border="1" cellpadding="10">
  {#if widgets.length > 0}
    <thead>
      {#each Object.keys(widgets[0]) as key}
        <th>{key}</th>
      {/each}
    </thead>
  {/if}
  {#each widgets as widget}
    <tr>
      {#each Object.keys(widget) as key}
        {#if key.toLowerCase() === "id"}
          <td><a href={`/widgets/${widget.id || 0}`}>{widget[key]}</a></td>
        {:else}
          <td>{widget[key]}</td>
        {/if}
      {/each}
    </tr>
  {/each}
</table>

<br />

<a href={`/widgets/new`}>New Widget</a>

<style>
  table {
    border-collapse: collapse;
  }
</style>
