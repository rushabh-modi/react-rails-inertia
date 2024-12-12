import { Head } from '@inertiajs/react';
// import type { IUser } from '@/types/user';

interface IndexProps {
  name: string;
  user: Schema.User;
}

export default function Index({ name, user }: IndexProps) {
  return (
    <>
      <Head title="Home" />
      <h1>Hello {name}</h1>
      <h1>{user.name}</h1>
      <h1>{user.email}</h1>
    </>
  );
}
