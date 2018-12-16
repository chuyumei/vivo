// pages/tabbar3/tabbar3.js
Page({
  getAjax: function (event) {
    var id = event.target.dataset.id;
    wx.request({
      url: 'http://127.0.0.1:3000/traval1?id=' + id,
      success: (res) => {
        //console.log(res)
        this.setData({
          nav_res: res.data[0]
        })
      }
    })
  },
  /**
   * 页面的初始数据
   */
  data: {
    season: [
      { id: 1, name: "春季" },
      { id: 2, name: "夏季" },
      { id: 3, name: "秋季" },
      { id: 4, name: "冬季" },
    ],
    nav_res: {},
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

  }
})