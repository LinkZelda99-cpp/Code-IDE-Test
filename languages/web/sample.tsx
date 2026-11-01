type Props = { title: string; count: number };
export function SampleCard({ title, count }: Props) {
  return <section aria-label={title}><h2>{title}</h2><p>Count: {count}</p></section>;
}
