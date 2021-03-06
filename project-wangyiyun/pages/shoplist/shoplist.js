// pages/shoplist/shoplist.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    list:[],
    pageIndex:0,
    pageSize:8,
    hasMore:true
  },
  loadMore:function(){
    wx.request({
      url:"http://127.0.0.1:3000/newslist6",
      data:{pno:++this.data.pageIndex,pageSize:this.data.pageSize},
      success:(result)=>{
        console.log(result)
        var pageCount=result.data.pageCount;
        var data=result.data.data
        var flag=this.data.pageIndex<pageCount;
        this.setData({
          list:data,
          hasMore:flag
        })
      }
    })
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