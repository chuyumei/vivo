// pages/index/index.js
Page({
  handleTap1:function(){
    wx.navigateTo({
      url:"/pages/iindex1_nav/iindex1_nav",
    })
  },
  /**
   * 页面的初始数据
   */
  data: {
    imgUrls: [
      "http://127.0.0.1:3000/img/nav/835a00f039982d145269718db1e93a80.jpg_r_1360x1360x95_5c23f275.jpg",
      "http://127.0.0.1:3000/img/nav/Cii9EFi7vbOIe6HBAD6dvAlIdTEAAIYYgIFfgoAPp3U644_w320_h180_c0_t0.jpg",
      "http://127.0.0.1:3000/img/nav/Cii-U1j0MByILaMWACHiU9Bv-LYAAJmMgATGy0AIeJr948_w320_h180_c0_t0.jpg"
    ],
    imgUrls2:[
      { id: 1, name: "游轮", img: "http://127.0.0.1:3000/img/nav/1.png" },
      { id: 2, name: "景区门票", img: "http://127.0.0.1:3000/img/nav/2.png" },
      { id: 3, name: "WIFI", img: "http://127.0.0.1:3000/img/nav/3.png" },
      { id: 4, name: "签证", img: "http://127.0.0.1:3000/img/nav/4.png" },
      { id: 5, name: "酒店", img: "http://127.0.0.1:3000/img/nav/5.png" },
      { id: 6, name: "出境游", img: "http://127.0.0.1:3000/img/nav/6.png" },
      { id: 7, name: "定制游", img: "http://127.0.0.1:3000/img/nav/7.png" },
      { id: 8, name: "商品", img: "http://127.0.0.1:3000/img/nav/8.png" },
    ],
    nav1: [
      { id: 1, name: "内蒙古" },
      { id: 2, name: "厦门" },
      { id: 3, name: "福建" },
      { id: 4, name: "海南" },
    ],
    nav2: [
      { id: 5, name: "承德" },
      { id: 6, name: "密云" },
      { id: 7, name: "大阪" },
      { id: 8, name: "昆明 " },
    ]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  },

  handleTap6:function(event){
    console.log(event)
    var id=event.target.dataset.id
    console.log(id)
  },
})