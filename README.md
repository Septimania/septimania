<style>
  .tabcontrol {
    display: block;
    overflow: hidden;
  }
  
  .tabcontrol-content {
    display: none;
  }
  
  .tabcontrol-content.active {
    display: block;
  }
  
  .tabcontrol-tabs {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
  }
  
  .tabcontrol-tab {
    padding: 10px 15px;
    background-color: #f2f2f2;
    border: 1px solid #ccc;
    cursor: pointer;
    margin-right: 5px;
  }
  
  .tabcontrol-tab.active {
    background-color: #ccc;
  }
</style>

<div class="tabcontrol">
  <ul class="tabcontrol-tabs">
    <li class="tabcontrol-tab active" onclick="showTab(event, 'tab1')">Tab 1</li>
    <li class="tabcontrol-tab" onclick="showTab(event, 'tab2')">Tab 2</li>
    <li class="tabcontrol-tab" onclick="showTab(event, 'tab3')">Tab 3</li>
  </ul>
  
  <div id="tab1" class="tabcontrol-content active">
    Content of Tab 1
  </div>
  
  <div id="tab2" class="tabcontrol-content">
    Content of Tab 2
  </div>
  
  <div id="tab3" class="tabcontrol-content">
    Content of Tab 3
  </div>
</div>

<script>
  function showTab(event, tabId) {
    const tabContents = document.querySelectorAll('.tabcontrol-content');
    const tabTabs = document.querySelectorAll('.tabcontrol-tab');
  
    tabContents.forEach(content => {
      content.classList.remove('active');
    });
  
    tabTabs.forEach(tab => {
      tab.classList.remove('active');
    });
    
    document.getElementById(tabId).classList.add('active');
    event.target.classList.add('active');
  }
</script>
