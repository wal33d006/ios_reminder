import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iOS Reminder UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ListTile(
              title: SizedBox(
                height: 35.0,
                child: Theme(
                  data: ThemeData(
                      hintColor: Colors.transparent,
                      primaryColor: Colors.transparent),
                  child: TextFormField(
                    cursorColor: Colors.white38,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Colors.white38,
                      ),
                      fillColor: Colors.white10,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white38,
                      ),
                      hintStyle: TextStyle(color: Colors.white38),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  _buildRowCard(
                      Icons.calendar_today, Colors.blue, '0', 'Today'),
                  SizedBox(
                    width: 6.0,
                  ),
                  _buildRowCard(
                      Icons.timelapse, Colors.orange, '3', 'Scheduled'),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 15.0,
                                  child: Icon(
                                    Icons.archive,
                                    size: 22.0,
                                  ),
                                  backgroundColor: Colors.white38,
                                  foregroundColor: Colors.white,
                                ),
                                Text(
                                  '23',
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'All',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle
                                    .copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                      color: Colors.white10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ],
              ),
            ),
            _buildCustomExpansion(context)
          ],
        ),
      ),
    );
  }

  Expanded _buildRowCard(
      IconData icon, Color color, String text, String title) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 15.0,
                    child: Icon(
                      icon,
                      size: 20.0,
                    ),
                    backgroundColor: color,
                    foregroundColor: Colors.white70,
                  ),
                  Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              )
            ],
          ),
        ),
        color: Colors.white10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }

  Widget _buildCustomExpansion(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Local',
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 15.0,
                                  child: Icon(
                                    Icons.list,
                                    size: 22.0,
                                  ),
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Reminders',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white54),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '9',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  color: Colors.white10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
