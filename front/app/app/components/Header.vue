<template>
  <b-navbar>
    <template slot="brand">
      <b-navbar-item tag="router-link" :to="{ path: '/' }">
        <img
          src="https://raw.githubusercontent.com/buefy/buefy/dev/static/img/buefy-logo.png"
          alt="Lightweight UI components for Vue.js based on Bulma"
        />
      </b-navbar-item>
    </template>

    <template slot="end">
      <b-navbar-item tag="div">
        <div class="buttons">
          <NuxtLink to="/topics/create" class="button is-primary">
            <strong>相談を作成</strong>
          </NuxtLink>
        </div>
      </b-navbar-item>
    </template>
  </b-navbar>
</template>