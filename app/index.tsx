import { Redirect } from "expo-router";

export default function Index() {
  const isLoggedIn = false;

  return isLoggedIn ? (
    <Redirect href={"/dashboard"} />
  ) : (
    <Redirect href={"/login"} />
  );
}
