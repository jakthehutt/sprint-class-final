import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns

sns.set_theme(style="white")

fig, ax = plt.subplots(figsize=(8, 6))

# Set up the conceptual 'Funnel/Hourglass' data 
# Y axis: Top, Middle, Bottom
y = [3, 2, 1]
labels = ['Upper Class\n(Capital & Inheritance)', 'Middle Class\n(The "Squeezed" Middle)', 'Lower / Precarious Class\n(No inheritance/Migrants)']

# Width of the funnel (Past vs Present conceptual width)
past_width = [25, 50, 25]  # The 'Broad Middle Class' ideal
present_width = [30, 30, 40]  # The 'Polarized' reality

# Plot Past as a light outline envelope
ax.fill_betweenx(y, -np.array(past_width)/2, np.array(past_width)/2, alpha=0.2, color='gray', label='Historical "Broad Middle" Ideal')

# Plot Present as solid funnel
ax.fill_betweenx(y, -np.array(present_width)/2, np.array(present_width)/2, alpha=0.8, color='#DB2777', label='Current "Polarized" Reality')

# Formatting the Funnel
ax.set_yticks(y)
ax.set_yticklabels(labels, fontweight='bold', fontsize=11)
ax.set_xticks([]) # Hide x-axis
ax.set_title('The Structural Funnel: Attrition of the Austrian Middle Class', fontsize=14, fontweight='bold', pad=20)

# Add annotations to explain the mechanics


ax.legend(loc='lower left')

sns.despine(left=True, bottom=True)
plt.tight_layout()
plt.savefig('slide1b_middle_class_funnel.png', dpi=300)
plt.close()
print("Generated slide1b_middle_class_funnel.png")
