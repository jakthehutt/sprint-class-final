import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
import seaborn as sns
import os

# Set style
sns.set_theme(style="whitegrid")
plt.rcParams['font.family'] = 'sans-serif'

# Colors
PINK = '#DB2777'
BLUE = '#3B82F6'
EMERALD = '#10B981'
PURPLE = '#8B5CF6'
ORANGE = '#F59E0B'
RED = '#EF4444'

def create_slide1_stacked_bar():
    labels = ['Share of Total Inherited Wealth']
    top_10 = [65]
    remaining = [30]
    migrants = [5]

    fig, ax = plt.subplots(figsize=(8, 6))
    
    ax.bar(labels, migrants, label='Migrant Background Pop. (5%)', color=EMERALD, width=0.4)
    ax.bar(labels, remaining, bottom=migrants, label='Remaining Native Pop. (30%)', color=BLUE, width=0.4)
    ax.bar(labels, top_10, bottom=np.array(migrants)+np.array(remaining), label='Top 10% Inheritors (65%)', color=PINK, width=0.4)
    
    ax.set_ylabel('Percentage of Total Inherited Wealth (%)', fontsize=12)
    ax.set_title('Concentration of Inherited Wealth in Austria', fontsize=14, fontweight='bold', pad=20)
    ax.legend(loc='center left', bbox_to_anchor=(1, 0.5))
    
    # Annotate
    ax.text(0, 2.5, '5%', ha='center', va='center', color='white', fontweight='bold')
    ax.text(0, 20, '30%', ha='center', va='center', color='white', fontweight='bold')
    ax.text(0, 67.5, '65%', ha='center', va='center', color='white', fontweight='bold')

    plt.tight_layout()
    plt.savefig('slide1_inheritance_stacked.png', dpi=300)
    plt.close()

def create_slide2_gini():
    labels = ['Income (After Taxes)', 'Wealth (Gross Assets)']
    gini = [0.28, 0.76]
    
    fig, ax = plt.subplots(figsize=(8, 6))
    bars = ax.bar(labels, gini, color=[EMERALD, PINK], width=0.5)
    
    ax.set_ylabel('Gini Coefficient (0 = Equality, 1 = Max Inequality)', fontsize=12)
    ax.set_title('The Wealth vs. Income Paradox in Austria', fontsize=14, fontweight='bold', pad=20)
    ax.set_ylim(0, 1)
    
    for bar in bars:
        height = bar.get_height()
        ax.annotate(f'{height}',
                    xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3),  
                    textcoords="offset points",
                    ha='center', va='bottom', fontweight='bold')
                    
    plt.tight_layout()
    plt.savefig('slide2_gini_comparison.png', dpi=300)
    plt.close()

def create_slide4_education():
    parents = ['Mandatory Schooling', 'Apprenticeship', 'University Degree']
    probs = [15, 28, 62]
    
    fig, ax = plt.subplots(figsize=(8, 6))
    bars = ax.bar(parents, probs, color=PURPLE, width=0.6)
    
    ax.set_ylabel('Probability of Child Getting Tertiary Degree (%)', fontsize=12)
    ax.set_title('Early Tracking & Educational Immobility', fontsize=14, fontweight='bold', pad=20)
    ax.set_ylim(0, 100)
    
    for bar in bars:
        height = bar.get_height()
        ax.annotate(f'{height}%',
                    xy=(bar.get_x() + bar.get_width() / 2, height),
                    xytext=(0, 3),  
                    textcoords="offset points",
                    ha='center', va='bottom', fontweight='bold')

    plt.tight_layout()
    plt.savefig('slide4_educational_immobility.png', dpi=300)
    plt.close()

def create_slide5_spatial():
    regions = ['Salzburg', 'Vienna', 'Tyrol', 'Upper Austria', 'Carinthia', 'Burgenland']
    gdp = [65800, 61900, 57700, 53800, 49600, 39000]
    growth = [-0.5, 0.9, 0.1, -2.7, -3.6, -0.4]
    
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.scatter(gdp, growth, color=BLUE, s=150, zorder=5)
    
    # Add labels to points
    for i, txt in enumerate(regions):
        ax.annotate(txt, (gdp[i], growth[i]), xytext=(10, 5), textcoords='offset points', 
                    fontweight='bold', fontsize=11,
                    bbox=dict(facecolor='white', edgecolor='none', alpha=0.7))

    ax.axhline(0, color='gray', linestyle='--', zorder=1)
    ax.set_xlabel('GDP per Capita (€)', fontsize=12)
    ax.set_ylabel('Real GRP Growth Rate (%)', fontsize=12)
    ax.set_title('Spatial Divides: Regional Economic Divergence (2024)', fontsize=14, fontweight='bold', pad=20)
    
    plt.tight_layout()
    plt.savefig('slide5_spatial_scatter.png', dpi=300)
    plt.close()


def create_slide8_diploma():
    labels = ['Working Class', 'Academics / Professionals']
    workforce = [35, 20]
    parliament = [3, 60]

    x = np.arange(len(labels)) 
    width = 0.35  

    fig, ax = plt.subplots(figsize=(9, 6))
    rects1 = ax.bar(x - width/2, workforce, width, label='Share of Workforce (%)', color=ORANGE)
    rects2 = ax.bar(x + width/2, parliament, width, label='Share of Parliament (%)', color=PURPLE)

    ax.set_ylabel('Percentage (%)', fontsize=12)
    ax.set_title('Political Inequality: The "Diploma Democracy"', fontsize=14, fontweight='bold', pad=20)
    ax.set_xticks(x)
    ax.set_xticklabels(labels, fontweight='bold')
    ax.legend(loc='upper right')

    for rect in rects1 + rects2:
        height = rect.get_height()
        ax.annotate(f'{height}%',
                    xy=(rect.get_x() + rect.get_width() / 2, height),
                    xytext=(0, 3),
                    textcoords="offset points",
                    ha='center', va='bottom', fontweight='bold')

    plt.tight_layout()
    plt.savefig('slide8_diploma_democracy.png', dpi=300)
    plt.close()

if __name__ == '__main__':
    create_slide1_stacked_bar()
    create_slide2_gini()
    create_slide4_education()
    create_slide5_spatial()
    create_slide8_diploma()
    print("All charts generated successfully in visualizations directory.")
