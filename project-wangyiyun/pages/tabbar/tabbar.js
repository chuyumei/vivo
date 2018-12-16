// pages/tabbar/tabbar.js
Page({
  getAjax:function(event){
    var id = event.target.dataset.id;
   wx.request({
     url: 'http://127.0.0.1:3000/traval1?id='+id,
     success:(res)=>{
       //console.log(res)
       this.setData({
         nav_res:res.data[0]
       })   
     }
   })
  },
  /**
   * 页面的初始数据
   */
  data: {
    nav1: [
      { id: 1, name: "内蒙古" },
      { id: 2, name: "厦门" },
      { id: 3, name: "福建" },
      { id: 4, name: "海南" },
    ],
    nav_res:{},
    showView: true


  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    showView: (options.showView == "true" ? true : false)
  /*让第一个显示 */
    wx.request({
      url: 'http://127.0.0.1:3000/traval1?id=1',
      success: (res) => {
        //console.log(res)
        this.setData({
          nav_res: res.data[0]
        })
      }
    })
  },

   onChangeShowState: function () {
    var that = this;
    that.setData({
      showView: (!that.data.showView)
    })
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