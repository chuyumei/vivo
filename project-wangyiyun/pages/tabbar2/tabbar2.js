// pages/tabbar2/tabbar2.js
Page({
  getAjax:function(){
    wx.request({
      url:"http://127.0.0.1:3000/travalt2",
      success:(res)=>{
        //console.log(res)
        this.setData({
          list1:res.data
        })
        //console.log(list1)
      }
    })
  },

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
    list1:[],
   
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
    this.getAjax()
    
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