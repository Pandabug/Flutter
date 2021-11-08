import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.06),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        elevation: 0,
        title: const Text(
          'Trade',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          SizedBox(
            width: 30,
            height: 30,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Icon(Icons.notifications_outlined),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text('1'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          _SearchField(),
          _Filters(),
          _Cryptos(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline),
            label: 'Assets',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_outlined),
            label: 'Trade',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xff3f74eb),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.compare_arrows,
                color: Colors.black,
              ),
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Pay',
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star_outline),
            label: 'For You',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.white.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 8),
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Filters extends StatelessWidget {
  const _Filters({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: const [
              SizedBox(width: 16),
              _Filter(title: 'Tradable', isActive: true),
              _Filter(title: 'Watchlist'),
              _Filter(title: 'New on Coinbase'),
              _Filter(title: 'All Assets'),
              _Filter(title: 'For You'),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}

class _Filter extends StatelessWidget {
  const _Filter({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: isActive ? Colors.blue : Colors.transparent),
        color: isActive ? Colors.blue.withOpacity(0.1) : Colors.transparent,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.blue : Colors.white,
          ),
        ),
      ),
    );
  }
}

class _Cryptos extends StatelessWidget {
  const _Cryptos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          _CryptoItem(
            image: 'assets/bitcoin.png',
            name: 'Bitcoin',
            description: 'BTC',
            value: '\$50,906.08',
            growth: -6.25,
          ),
          _CryptoItem(
            image: 'assets/ethereum.png',
            name: 'Ethereum',
            description: 'ETH',
            value: '\$3,473.88',
            growth: -4.80,
          ),
          _CryptoItem(
            image: 'assets/tether.png',
            name: 'Tether',
            description: 'USDT',
            value: '\$0.86',
            growth: 0.26,
          ),
          _CryptoItem(
            image: 'assets/cardano.png',
            name: 'Cardano',
            description: 'ADA',
            value: '\$1.72',
            growth: -8.64,
          ),
          _CryptoItem(
            image: 'assets/solana.png',
            name: 'Solana',
            description: 'SOL',
            value: '\$166.98',
            growth: -9.43,
          ),
          _SeeAllButton(),
        ],
      ),
    );
  }
}

class _CryptoItem extends StatelessWidget {
  const _CryptoItem({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.value,
    required this.growth,
  }) : super(key: key);

  final String image, name, description, value;
  final double growth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(image, width: 40, height: 40),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '$growth',
                style: TextStyle(
                  color: growth < 0 ? Colors.red : Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SeeAllButton extends StatelessWidget {
  const _SeeAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 1,
            color: Colors.white.withOpacity(0.3),
          ),
        ),
        child: const Center(
          child: Text(
            'See all',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
