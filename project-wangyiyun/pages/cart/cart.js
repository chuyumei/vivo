// pages/cart/cart.js
var app = getApp() 
Page({
  jumpdetails:function(event){
    var id = event.target.dataset.id;
    console.log(id)
    wx.navigateTo({
      url: '/pages/details/details?id='+id,
    })
    //console.log(event)
  },
  /**
   * 页面的初始数据
   */
  data: {
    navbar: ['系列1', '系列2'],
    currentTab: 0 ,
    list1:[],
    list2: []
  },

  navbarTap: function (e) {
    console.log(e)
    this.setData({
      currentTab: e.currentTarget.dataset.idx
    })

    //console.log(this.currentTab)
  } ,
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

   
/*系列1*/
    wx.request({
      url: "http://127.0.0.1:3000/travaltf",
      data: {
        fid: 1,
      },
      success:(res)=>{
        console.log(res)
        this.setData({
          list1: res.data,
        })
        //console.log(res.data)
      }
    })
/*系列2 */
    wx.request({
      url: "http://127.0.0.1:3000/travaltf",
      data: {
        fid: 2,
      },
      success: (res) => {
        console.log(res)
        this.setData({
          list2: res.data,
        })
        //console.log(res.data)
      }
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