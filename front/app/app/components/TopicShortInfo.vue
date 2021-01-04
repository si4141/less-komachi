<template>
  <div class="column is-full">
    <div class="card">
      <div class="card-content">
        <div class="media">
          <div class="media-left">
            <figure class="image is-48x48">
              <img
                src="https://bulma.io/images/placeholders/96x96.png"
                alt="Placeholder image"
              />
            </figure>
          </div>
          <div class="media-content">
            <p class="title is-4">{{ title }}</p>
            <p class="subtitle is-6">
              <b-icon icon="clock-outline" size="is-small"></b-icon>
              {{ createdAt }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  props: ["title", "createdAt"],
};
</script>