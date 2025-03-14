#include <iostream>
#include <unordered_map>
#include <string>
#include <fstream>
#include <algorithm>
#include <sstream>


using namespace std;

/*typedef unordered_map<string, FootballPlayer*> PlayerMap;

void loadPlayers(PlayerMap& roster, const string& filename) {
    ifstream file(filename);
    if (!file.is_open()) {
        cout << "Error: File not opened!" << endl;
        return;
    }

    string type, name, height;
    int age, weight, stat1, stat2;
    int length;
    file >> length;
    file.ignore();

    for (int i = 0; i < length; i++) {
        getline(file, type);
        getline(file, name);
        file >> age;
        file.ignore();
        getline(file, height);
        file >> weight >> stat1 >> stat2;
        file.ignore();

        if (type == "Quarterback") {
            roster[name] = new Quarterback(name, age, height, weight, stat1, stat2);
        } else if (type == "Runningback") {
            roster[name] = new Runningback(name, age, height, weight, stat1, stat2);
        } else if (type == "Receiver") {
            roster[name] = new Receiver(name, age, height, weight, stat1, stat2);
        }
    }

    file.close();
    cout << "Players loaded successfully." << endl;
}

void savePlayers(const PlayerMap& roster, const string& filename) {
    ofstream file(filename);
    if (!file) {
        cout << "Failed to open file. Please try again." << endl;
        return;
    }

    file << roster.size() << endl;
    for (const auto& [name, player] : roster) {
        string type;
        if (dynamic_cast<Quarterback*>(player)) {
            type = "Quarterback";
        } else if (dynamic_cast<Receiver*>(player)) {
            type = "Receiver";
        } else if (dynamic_cast<Runningback*>(player)) {
            type = "Runningback";
        }

        file << type << endl;
        file << player->getName() << endl;
        file << player->getAge() << endl;
        file << player->getHeight() << endl;
        file << player->getWeight() << endl;
        file << player->getStat1() << endl;
        file << player->getStat2() << endl;
    }

    file.close();
    cout << "Players saved successfully to " << filename << "." << endl;
}

void editPlayer(PlayerMap& roster, const string& playerName) {
    auto it = roster.find(playerName);
    if (it != roster.end()) {
        FootballPlayer* player = it->second;

        string newHeight;
        int newAge, newWeight, stat1, stat2;
        cout << "Enter new age: ";
        cin >> newAge;
        cin.ignore();
        cout << "Enter new height: ";
        getline(cin, newHeight);
        cout << "Enter new weight: ";
        cin >> newWeight;

        if (dynamic_cast<Quarterback*>(player)) {
            cout << "Enter new passing yard: ";
            cin >> stat1;
            cout << "Enter new passing touchdown: ";
            cin >> stat2;
        } else if (dynamic_cast<Receiver*>(player)) {
            cout << "Enter new receiving yard: ";
            cin >> stat1;
            cout << "Enter new receiving touchdown: ";
            cin >> stat2;
        } else if (dynamic_cast<Runningback*>(player)) {
            cout << "Enter new rushing yard: ";
            cin >> stat1;
            cout << "Enter new rushing touchdown: ";
            cin >> stat2;
        }

        player->setPlayer(playerName, newAge, newHeight, newWeight, stat1, stat2);
        cout << "Player updated." << endl;
    } else {
        cout << "Player not found." << endl;
    }
}

void printPlayerInfo(const PlayerMap& roster, const string& playerName) {
    auto it = roster.find(playerName);
    if (it != roster.end()) {
        it->second->printInfo();
    } else {
        cout << "Player not found." << endl;
    }
}

void printAllPlayers(const PlayerMap& roster) {
    if (roster.empty()) {
        cout << "No players in the roster." << endl;
        return;
    }

    for (const auto& [name, player] : roster) {
        player->printInfo();
        cout << "---------------------------------" << endl;
    }
}

int main() {
    PlayerMap roster;
    int choice;
    string filename, playerName;

    do {
        cout << "1. Load Players\n2. Save Players\n3. Edit Player\n4. Print Player Info\n5. Print All Players\n6. Exit\nEnter your choice: ";
        cin >> choice;

        switch (choice) {
        case 1:
            cout << "Enter filename: ";
            cin >> filename;
            loadPlayers(roster, filename);
            break;
        case 2:
            cout << "Enter filename: ";
            cin >> filename;
            savePlayers(roster, filename);
            break;
        case 3:
            cout << "Enter player name: ";
            cin.ignore();
            getline(cin, playerName);
            editPlayer(roster, playerName);
            break;
        case 4:
            cout << "Enter player name: ";
            cin.ignore();
            getline(cin, playerName);
            printPlayerInfo(roster, playerName);
            break;
        case 5:
            printAllPlayers(roster);
            break;
        case 6:
            cout << "Exiting program..." << endl;
            break;
        default:
            cout << "Invalid choice, please try again." << endl;
        }
    } while (choice != 6);

    for (auto& [name, player] : roster) {
        delete player;
    }

    return 0;
}
*/