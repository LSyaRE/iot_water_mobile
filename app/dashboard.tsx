import { useRouter } from "expo-router";
import { View, Text, Button } from "react-native";

export default function DashboardPage() {
  const navigation = useRouter();

  return (
    <View>
      <Text>Dashboard</Text> {/* Add your login form here */}
      <Button
        title="Login"
        onPress={() => navigation.navigate("/login")}
      />{" "}
      {/* Navigate to Home tab after login */}
      {/* <Button title="Register" onPress={() => navigation.navigate("/register")} /> Navigate to Register screen */}
    </View>
  );
}
