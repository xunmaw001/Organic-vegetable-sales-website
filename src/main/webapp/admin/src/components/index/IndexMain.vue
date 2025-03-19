<template>
	<el-main>
		<bread-crumbs :title="title" class="bread-crumbs"></bread-crumbs>
		<div v-for="item in menuList" v-bind:key="item.roleName">
			<div v-if="role==item.roleName" class="nav-list">
				<a href="#" @click="homeChange(-2)" class="nav-title" :class="currentIndex==-2?'active':''">首页</a>
				<a href="#" @click="centerChange(-1)" class="nav-title" :class="currentIndex==-2?'active':''">个人中心</a>
				<a href="#" @click="titleChange(index,menu.child)" v-for=" (menu,index) in item.backMenu" v-bind:key="menu.menu" class="nav-title" :class="index==currentIndex?'active':''">{{menu.menu}}</a>
			</div>
		</div>
		<div v-if="itemMenu.length>0" class="nav-item">
			<a @click="menuHandler(menu)" href="#" class="menu" v-for=" (menu,index) in itemMenu" v-bind:key="index">{{menu.menu}}</a>
		</div>
		<router-view class="router-view"></router-view>
	</el-main>
</template>
<script>
	import menu from "@/utils/menu";
	export default {
		data() {
			return {
				menuList: [],
				role: "",
				currentIndex: -2,
				itemMenu: [],
				title: ''
			};
		},
		mounted() {
			let menus = menu.list();
			this.menuList = menus;
			this.role = this.$storage.get("role");
		},
		methods: {
			menuHandler(menu) {
				this.$router.push({
					name: menu.tableName
				});
				this.title = menu.menu;
			},
			titleChange(index, menus) {
				this.currentIndex = index
				this.itemMenu = menus;
				console.log(menus);
			},
			homeChange(index) {
				this.itemMenu = [];
				this.title = ""
				this.currentIndex = index
				this.$router.push({
					name: 'home'
				});
			},
			centerChange(index) {
				this.itemMenu = [{
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "修改密码",
					"tableName": "updatePassword"
				}, {
					"buttons": ["新增", "查看", "修改", "删除"],
					"menu": "个人信息",
					"tableName": "center"
				}];
				this.title = ""
				this.currentIndex = index
				this.$router.push({
					name: 'home'
				});
			}
		}
	};
</script>
<style lang="scss" scoped>
	a {
		text-decoration: none;
		color: #555;
	}

	a:hover {
		background: #00c292;
	}

	.nav-list {
		width: 100%;
		margin: 0 auto;
		text-align: left;
		margin-top: 20px;

		.nav-title {
			display: inline-block;
			font-size: 15px;
			color: #333;
			padding: 15px 25px;
			border: none;
		}

		.nav-title.active {
			color: #555;
			cursor: default;
			background-color: #fff;
		}
	}

	.nav-item {
		margin-top: 20px;
		background: #FFFFFF;
		padding: 15px 0;

		.menu {
			padding: 15px 25px;
		}
	}

	.el-main {
		background-color: #F6F8FA;
		padding: 0 50px;
		padding-top: 60px;
	}

	.router-view {
		padding: 10px;
		margin-top: 10px;
		background: #FFFFFF;
	}

	.bread-crumbs {
		width: 100%;
		// border-bottom: 1px solid #e9eef3;
		// border-top: 1px solid #e9eef3;
		margin-top: 10px;
	}
</style>
