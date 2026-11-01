const form = document.querySelector("#task-form");
const input = document.querySelector("#task-input");
const list = document.querySelector("#task-list");
const count = document.querySelector("#task-count");
const emptyState = document.querySelector("#empty-state");
const clock = document.querySelector("#clock");
const themeToggle = document.querySelector("#theme-toggle");
const filterButtons = document.querySelectorAll(".filter-button");

let tasks = [];
let activeFilter = "all";

function visibleTasks() {
  if (activeFilter === "open") return tasks.filter((task) => !task.completed);
  if (activeFilter === "done") return tasks.filter((task) => task.completed);
  return tasks;
}

function renderTasks() {
  list.replaceChildren();

  for (const task of visibleTasks()) {
    const item = document.createElement("li");
    item.className = task.completed ? "task-item completed" : "task-item";

    const checkbox = document.createElement("input");
    checkbox.type = "checkbox";
    checkbox.checked = task.completed;
    checkbox.setAttribute("aria-label", `Complete ${task.text}`);
    checkbox.addEventListener("change", () => {
      task.completed = checkbox.checked;
      renderTasks();
    });

    const label = document.createElement("span");
    label.textContent = task.text;

    const removeButton = document.createElement("button");
    removeButton.className = "delete-button";
    removeButton.type = "button";
    removeButton.textContent = "Delete";
    removeButton.addEventListener("click", () => {
      tasks = tasks.filter((candidate) => candidate.id !== task.id);
      renderTasks();
    });

    item.append(checkbox, label, removeButton);
    list.append(item);
  }

  const remaining = tasks.filter((task) => !task.completed).length;
  count.textContent = `${remaining} open / ${tasks.length} total`;
  emptyState.hidden = visibleTasks().length !== 0;
  for (const button of filterButtons) {
    button.classList.toggle("active", button.dataset.filter === activeFilter);
  }
}

form.addEventListener("submit", (event) => {
  event.preventDefault();
  const text = input.value.trim();
  if (!text) return;
  tasks.push({ id: crypto.randomUUID(), text, completed: false });
  input.value = "";
  input.focus();
  renderTasks();
});

for (const button of filterButtons) {
  button.addEventListener("click", () => {
    activeFilter = button.dataset.filter;
    renderTasks();
  });
}

themeToggle.addEventListener("click", () => {
  document.body.classList.toggle("light");
});

clock.textContent = new Intl.DateTimeFormat(undefined, {
  dateStyle: "medium",
  timeStyle: "short",
}).format(new Date());

renderTasks();
