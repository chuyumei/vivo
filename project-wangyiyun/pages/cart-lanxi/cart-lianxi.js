// pages/addcart/addcart.js
Page({
  //封装一个计算总价的函数，不同状态下重新调用
  getTotalPrice() {
    let carts = this.data.carts;                  // 获取购物车列表
    let total = 0;
    for (let i = 0; i < carts.length; i++) {         // 循环列表得到每个数据
      if (carts[i].selected) {                   // 判断选中才会计算价格
        total += carts[i].num * carts[i].price;     // 所有价格加起来
      }
    }
    this.setData({                                // 最后赋值到data中渲染到页面
      carts: carts,
      totalPrice: total.toFixed(2)
    });
  },
  // 点击单个按钮。改变按钮的选中状态，重新计算总价
  selectList:function(e) {
    //console.log(e)
    let index = e.currentTarget.dataset.index;    // 获取data- 传进来的index
    let selected = carts[index].selected;         // 获取当前商品的选中状态
    let selectAllStatus=this.data.selectAllStatus
    let carts = this.data.carts;
    selectAllStatus=carts[index].selected
   

    //carts[index].selected = !selected;              // 改变状态



 /*   var _this=this  
    this.carts.forEach(function(v,i){
      if(v.selected){
        _this.selectAllStatus=true
      }else{
        _this.selectAllStatus=false
      }
    })*/


 /*   for(let i=0;i<carts.length;i++){
      if(carts[i].selected==false){
        selectAllStatus=false
        return
      }
     
    }
*/


    this.setData({
      carts: carts,
      selectAllStatus:selectAllStatus
    });
    this.getTotalPrice();                           // 重新获取总价
  },

  //单机单个按钮的选中状态，改变全选按钮的选中状态


  // 点击全选，单品全部选中，重新计算总价
  selectAll(e) {
    let selectAllStatus = this.data.selectAllStatus;    // 是否全选状态
    //selectAllStatus = !selectAllStatus;
    let carts = this.data.carts;

    for (let i = 0; i < carts.length; i++) {
      carts[i].selected = selectAllStatus;            // 改变所有商品状态
    }
    this.setData({
      selectAllStatus: selectAllStatus,
      carts: carts
    });
    this.getTotalPrice();                               // 重新获取总价
  },

  // 增加数量
  addCount(e) {
    const index = e.currentTarget.dataset.index;
    let carts = this.data.carts;
    let num = carts[index].num;
    num = num + 1;
    carts[index].num = num;
    this.setData({
      carts: carts
    });
    this.getTotalPrice();
  },
  // 减少数量
  minusCount(e) {
    const index = e.currentTarget.dataset.index;
    let carts = this.data.carts;
    let num = carts[index].num;
    if (num <= 1) {
      return false;
    }
    num = num - 1;
    carts[index].num = num;
    this.setData({
      carts: carts
    });
    this.getTotalPrice();
  },
  // 点击删除
  deleteList(e) {
    const index = e.currentTarget.dataset.index;
    let carts = this.data.carts;
    carts.splice(index, 1);              // 删除购物车列表里这个商品
    this.setData({
      carts: carts
    });
    if (!carts.length) {                  // 如果购物车为空
      this.setData({
        hasList: false              // 修改标识为false，显示购物车为空页面
      });
    } else {                              // 如果不为空
      this.getTotalPrice();           // 重新计算总价格
    }
  },


  /**
   * 页面的初始数据
   */
  data: {
    carts: [],               // 购物车列表
    hasList: false,          // 列表是否有数据
    totalPrice: 0,           // 总价，初始为0
    selectAllStatus: true    // 全选状态，默认全选
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
    this.setData({
      hasList: true,
      carts: [
        { id: 1, title: 'vivoY73 3GB+32GB 香槟金', image: 'http://127.0.0.1:3000/img/list/5354_1536638174781hd_bi_750x750.png', num: 4, price: 666, selected: true },
        { id: 2, title: '19:9异形全面屏', image: 'http://127.0.0.1:3000/img/list/5353_1536638167990hd_bi_750x750.png', num: 1, price: 2600, selected: true }
      ]
    });
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