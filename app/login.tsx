import { useRouter } from "expo-router";
import { View, Text, Button } from "react-native";

export default function LoginPage() {
  const navigation = useRouter();

  return (
    <View>
      <Text></Text> 
      <Button
        title="Login"
        onPress={() => navigation.navigate("/dashboard")}
      />{" "}
    </View>
  );
}
