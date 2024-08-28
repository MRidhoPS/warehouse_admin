import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Drawer(),
          DashboardContent(),
        ],
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  const DashboardContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 18, 16, 44),
      child: const Column(
        children: [
          RowAccounts(),
          RowItems(),
          ContainerItems(),
        ],
      ),
    );
  }
}

class ContainerItems extends StatelessWidget {
  const ContainerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(40, 60, 30, 10),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.8,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Colors.white10,
              Colors.white12,
              Colors.white24,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: listItems(),
    );
  }

  ListView listItems() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Text(
            "${index + 1}",
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
          title: const Text(
            "Ini TItle",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: const Text(
            "Ini SubTItle",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              size: 20,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}

class RowItems extends StatelessWidget {
  const RowItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardItemDashboard(
          text: 'Total Items',
          number: '20',
        ),
        CardItemDashboard(
          text: 'Self Selling',
          number: '10',
        ),
        CardItemDashboard(
          text: 'Consignment',
          number: '7',
        ),
        CardItemDashboard(
          text: 'Authenticator',
          number: '3',
        ),
      ],
    );
  }
}

class CardItemDashboard extends StatelessWidget {
  const CardItemDashboard({
    super.key,
    required this.text,
    required this.number,
  });

  final String text;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 30),
      width: MediaQuery.of(context).size.width / 6,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: const LinearGradient(
          colors: [
            Colors.white10,
            Colors.white12,
            Colors.white24,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.values[2],
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
          Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}

class RowAccounts extends StatelessWidget {
  const RowAccounts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, top: 40, right: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Dashboard",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
          Row(
            children: [
              Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white10,
                      Colors.white12,
                      Colors.white24,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.white10,
                      Colors.white12,
                      Colors.white24,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Drawer extends StatelessWidget {
  const Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 18, 46, 68),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Warehouse\nProject",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            child: const Column(
              children: [
                Text(
                  "Dashboard",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Add Items",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
