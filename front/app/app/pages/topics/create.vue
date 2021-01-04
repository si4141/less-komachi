<template>
  <form @submit.prevent="createTopic">
    <h1 class="subtitle">新しい相談を作成</h1>

    <h2 class="subtitle">相談内容</h2>
    <b-field label="タイトル">
      <b-input
        v-model="topicData.title"
        maxlength="30"
        placeholder="相談のタイトル"
      ></b-input>
    </b-field>

    <b-field label="本文">
      <b-input
        type="textarea"
        minlength="10"
        maxlength="800"
        placeholder="本文"
        v-model="topicData.body"
      >
      </b-input>
    </b-field>

    <h2 class="subtitle">相談者情報</h2>

    <b-field label="ハンドルネーム">
      <b-input
        v-model="userData.name"
        maxlength="30"
        placeholder="名前を入力してください"
      ></b-input>
    </b-field>

    <b-field label="Emailアドレス">
      <b-input
        placeholder="Email"
        type="email"
        v-model="userData.email"
      ></b-input>
    </b-field>

    <div class="buttons">
      <b-button type="is-primary" native-type="submit"
        >この内容で登録する</b-button
      >
    </div>
  </form>
</template>

<script>
export default {
  data() {
    return {
      userData: {
        name: "",
        email: "",
      },
      topicData: {
        title: "",
        body: "",
      },
    };
  },
  methods: {
    async createTopic() {
      const userResponse = await this.$axios.$post("http://api.3000/user", {
        name: this.userData.name,
        email: this.userData.email,
      });
      const userId = userResponse.data().user_id;
      const res = await this.$axios.$post("http://api:3000/topic", {
        title: this.topicData.title,
        body: this.topicData.body,
        user_id: userId,
      });
    },
  },
};
</script>