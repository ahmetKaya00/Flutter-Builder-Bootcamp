import 'package:flutter/material.dart';

class InfiniteScrollPage extends StatefulWidget{
  @override
  _InfiniteScrollPageState createState() => _InfiniteScrollPageState();
}

class _InfiniteScrollPageState extends State<InfiniteScrollPage>{
  final List<int> _data = [];

  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState(){
    super.initState();
    _loadMoreData();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent && !_isLoading){
        _loadMoreData();
      }
    });
  }

  Future<void> _loadMoreData() async{
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(Duration(seconds: 2));
    List<int> newData = List.generate(100, (index) => _data.length + index);

    setState(() {
      _data.addAll(newData);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Infinite Scroll')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _data.length+1,
              itemBuilder: (context, index){
                if(index < _data.length){
                  return ListTile(
                    title: Text('Item ${_data[index]}'),
                  );
                } else {
                  return _isLoading ? Padding(padding: EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator()),
                  ) : SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
    @override
    void dispose(){
      _scrollController.dispose();
      super.dispose();
    }

}