defmodule Gigatester.Bucket do
  def start_link(initial_value, name) do
    Agent.start_link(fn -> initial_value end, name: name)
  end

  def push(pid, item) do
    Agent.update(pid, fn state -> [item | state] end)
  end

  def head(pid) do
    Agent.get(pid, fn state -> hd(state) end)
  end

  def get(pid) do
    Agent.get(pid, fn state -> state end)
  end
end
