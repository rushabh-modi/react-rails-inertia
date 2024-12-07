import { Head } from "@inertiajs/react";

interface IndexProps {
  name: string;
}

export default function Index({ name }: IndexProps) {
  return (
    <>
      <Head title="Home" />
      <h1>Hello, {name}</h1>
    </>
  );
}
