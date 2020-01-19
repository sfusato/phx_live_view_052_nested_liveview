defmodule PhxLiveView052NestedLiveviewWeb.ParentLive do
  use Phoenix.LiveView

  def mount(_assigns, socket) do
    {:ok, assign(socket, :select_option, "opt1")}
  end

  def render(assigns) do
    ~L"""
    This is the parent. Select `Nested Liveview`:
    <hr>
    <select class="mr-1" phx-click="select_option">
      <option value="opt1">Some option</option>
      <option value="opt2">Nested Liveview</option>
    </select>

    <%= render_select_option(assigns) %>
    """
  end

  def render_select_option(%{select_option: "opt1"} = assigns) do
    ~L"""
    <p>'Some option' selected</p>
    """
  end

  def render_select_option(%{select_option: "opt2"} = assigns) do
    ~L"""
    <%= Phoenix.LiveView.Helpers.live_render(@socket, PhxLiveView052NestedLiveviewWeb.ChildLive, id: "child") %>
    """
  end

  def handle_event("select_option", %{"value" => value}, socket) do
    {:noreply, assign(socket, :select_option, value)}
  end
end
