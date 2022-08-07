defmodule KV.Registry do
  use GenServer

  @impl true
  @spec init(:ok) :: {:ok, %{}}
  def init(:ok) do
    {:ok, %{}}
  end

  # region [ callbacks ]
  @impl true
  def handle_call({:lookup, name}, _from, names) do
    {:reply, Map.fetch(names, name), names}
  end

  # endregion [callbacks]
end
