﻿namespace AutomotrizApp
{
    partial class frmHome
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmHome));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.salirToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.salirToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.ordenDePedidoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.nuevaOrdenDePedidoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarOrdenDePedidoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.salirToolStripMenuItem,
            this.ordenDePedidoToolStripMenuItem,
            this.reportesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // salirToolStripMenuItem
            // 
            this.salirToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.salirToolStripMenuItem1});
            this.salirToolStripMenuItem.Name = "salirToolStripMenuItem";
            this.salirToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.salirToolStripMenuItem.Text = "Archivo";
            // 
            // salirToolStripMenuItem1
            // 
            this.salirToolStripMenuItem1.Name = "salirToolStripMenuItem1";
            this.salirToolStripMenuItem1.Size = new System.Drawing.Size(96, 22);
            this.salirToolStripMenuItem1.Text = "Salir";
            this.salirToolStripMenuItem1.Click += new System.EventHandler(this.salirToolStripMenuItem1_Click);
            // 
            // ordenDePedidoToolStripMenuItem
            // 
            this.ordenDePedidoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevaOrdenDePedidoToolStripMenuItem,
            this.consultarOrdenDePedidoToolStripMenuItem});
            this.ordenDePedidoToolStripMenuItem.Name = "ordenDePedidoToolStripMenuItem";
            this.ordenDePedidoToolStripMenuItem.Size = new System.Drawing.Size(108, 20);
            this.ordenDePedidoToolStripMenuItem.Text = "Orden de Pedido";
            // 
            // nuevaOrdenDePedidoToolStripMenuItem
            // 
            this.nuevaOrdenDePedidoToolStripMenuItem.Name = "nuevaOrdenDePedidoToolStripMenuItem";
            this.nuevaOrdenDePedidoToolStripMenuItem.Size = new System.Drawing.Size(217, 22);
            this.nuevaOrdenDePedidoToolStripMenuItem.Text = "Nueva Orden de Pedido";
            this.nuevaOrdenDePedidoToolStripMenuItem.Click += new System.EventHandler(this.nuevaOrdenDePedidoToolStripMenuItem_Click);
            // 
            // consultarOrdenDePedidoToolStripMenuItem
            // 
            this.consultarOrdenDePedidoToolStripMenuItem.Name = "consultarOrdenDePedidoToolStripMenuItem";
            this.consultarOrdenDePedidoToolStripMenuItem.Size = new System.Drawing.Size(217, 22);
            this.consultarOrdenDePedidoToolStripMenuItem.Text = "Consultar Orden de Pedido";
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.reportesToolStripMenuItem.Text = "Reportes";
            // 
            // frmHome
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "frmHome";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "AUTOMOTRIZ APP";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem salirToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem salirToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem ordenDePedidoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem nuevaOrdenDePedidoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultarOrdenDePedidoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
    }
}

