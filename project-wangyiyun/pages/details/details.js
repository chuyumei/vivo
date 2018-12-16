// pages/details/details.js
var app = getApp() 
Page({
  
   //-------点击我显示底部弹出框--开始-------
   clickme:function(){
    this.showModal();
  },
  showModal: function () {
    // 显示遮罩层
    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    })
    this.animation = animation
    animation.translateY(300).step()
    this.setData({
      animationData: animation.export(),
      showModalStatus: true
    })
    setTimeout(function () {
      animation.translateY(0).step()
      this.setData({
        animationData: animation.export()
      })
    }.bind(this), 200)
  },
  //隐藏对话框
  hideModal: function () {
    // 隐藏遮罩层
    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    })
    this.animation = animation
    animation.translateY(300).step()
    this.setData({
      animationData: animation.export(),
    })
    setTimeout(function () {
      animation.translateY(0).step()
      this.setData({
        animationData: animation.export(),
        showModalStatus: false
      })
    }.bind(this), 200)
  },
   /*点击减号*/
   bindMinus: function () {
    var num = this.data.num;
    if (num > 1) {
      num--;
    }
    var minusStatus = num > 1 ? 'normal' : 'disable';
    this.setData({
      num: num,
      minusStatus: minusStatus
    })
  },
  /*点击加号*/
  bindPlus: function () {
    var num = this.data.num;
    num++;
    var minusStatus = num > 1 ? 'normal' : 'disable';
    this.setData({
      num: num,
      minusStatus: minusStatus
    })
  },
  /*输入框事件*/
  bindManual: function (e) {
    var num = e.detail.value;
    var minusStatus = num > 1 ? 'normal' : 'disable';
    this.setData({
      num: num,
      minusStatus: minusStatus
    })
  },
  /*商品规格点击事件*/
  handdlespecs:function(e){
    console.log(e)
    var id = e.target.dataset.id;
    wx.request({
      url: "http://127.0.0.1:3000/travalt3",
      data: {
        id: id,
      },
      success:  (res)=> {
        console.log(res)
        this.setData({
          list3: res.data,
        })
      }
    })
  },
  /*商品延保隐藏部分*/
  onChangeShowState: function () {
    var that = this;
    that.setData({
      showView: (!that.data.showView)
    })
  },
  //-------点击我显示底部弹出框--结束-------
  /**
   * 页面的初始5-数据
   */
  data: {

    nav_res: {},
    /*navbar */
    navbar: ['首页', '搜索'],
    currentTab: 0,
    list: [],
    /*底部弹框 */
    showView: false,
    showModalStatus:false,
    num: 1,
    minusStatus: 'disable',
    list2:[],
    list3:[]
  },


  navbarTap: function (e) {
    //console.log(e)
    this.setData({
      currentTab: e.currentTarget.dataset.idx
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    //console.log(options)
    this.setData({
      id: options.id
    })  
    
    /*获取商品信息 */
    wx.request({
      url: "http://127.0.0.1:3000/travalt3",
      data: {
        id: 1,
      },
      success:  (res)=> {
        this.setData({
          list: res.data,
        })
      }
    })
    /*获取商品规格列表 */
    wx.request({
      url: "http://127.0.0.1:3000/travalt4",
      data: {
        id: 1,
      },
      success:  (res)=> {
        //console.log(res)
        this.setData({
          list2: res.data,
        })
      }
    })

     /*初始化让第一个规格显示 */
     wx.request({
      url: "http://127.0.0.1:3000/travalt3",
      data: {
        id: 1,
      },
      success:  (res)=> {
        this.setData({
          list3: res.data,
        })
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