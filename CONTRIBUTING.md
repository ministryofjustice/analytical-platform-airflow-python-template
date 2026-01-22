## Contributing

We welcome contributions and suggestions! Here's how you can help:

1. **Report Issues**: Found a bug or have a feature request? [Open an issue](https://github.com/moj-analytical-services/data-science-template/issues/new/choose)

2. **Suggest Improvements**: Have ideas for improving this template? Create an issue with the "enhancement" label

3. **Submit Pull Requests**:
   - Fork the repository
   - Create a feature branch (`git checkout -b feature/improvement`)
   - Make your changes and commit (`git commit -am 'Add new feature'`)
   - Push to the branch (`git push origin feature/improvement`)
   - Open a Pull Request

4. **Document Decisions**: For significant architectural changes, create an [Architecture Decision Record](docs/adr/README.md) using:

   ```bash
   adr-new "Your decision title"
   ```

## Ethical Considerations

> [!CAUTION]
> **DO THIS FIRST**: Before writing any code or collecting any data, conduct an initial ethics scan. This is a quick assessment to identify potential ethical issues early when they're easiest to address.
>
> **Use the official ethics scan questionnaire**: [MoJ Ethics Scan Questions Form](https://forms.office.com/Pages/ResponsePage.aspx?id=KEeHxuZx_kGp4S6MNndq2BVHD6pyd0hHqgn8qzKRvG5UQVMyR0ZYUDQ2SUg2VjJGSzZFUEhKSDYzTC4u) - This form guides you through the initial assessment questions.

> [!IMPORTANT]
> **MANDATORY REQUIREMENT**: All data science and AI projects **must** follow the [MoJ Data Ethics Framework process](https://justiceuk.sharepoint.com/sites/MoJAIDataEthicsHub/SitePages/Governance-Process.aspx?csf=1&web=1&e=GrR7F5)
>
> **Projects cannot proceed to deployment without:**
> - Completed Development Phase Questionnaire
> - Completed Deployment Phase Questionnaire
> - Final ethics sense check approval

### SAFE-D Principles

| Principle | Description | Key Considerations |
|-----------|-------------|--------------------|
| **S**ustainability | Ensure safe, reliable outputs and practices to mitigate long-term risk | Safety, security, robustness, reliability, accuracy & performance |
| **A**ccountability | Implement transparent processes and communication channels | Traceability, answerability, auditability, accessibility, clear data provenance |
| **F**airness | Prevent discrimination and balance rights/interests of all parties | Bias mitigation, diversity & inclusivity, non-discrimination, equality |
| **E**xplainability | Support ability to explain technology behavior within systems | Interpretability, responsible model selection, accessible rationale, user training, reproducibility |
| **D**ata Responsibility | Consider data quality, relevance, integrity, and compliance | Responsible data management, adequacy of quantity & quality, source integrity, timeliness, legal compliance |

**Required Documentation:**

You **must** create and maintain the following:
- `docs/ethics/` directory for all ethics documentation
- Decision log recording all ethical considerations and choices
- Stakeholder engagement records for each project phase
- Completed Development Phase Questionnaire before model finalisation
- Completed Deployment Phase Questionnaire before system deployment
- Final ethics sense check sign-off
- Documentation of how each SAFE-D principle applies to your project

**Quick Links:**

- 📋 [Initial Ethics Scan Form](https://forms.office.com/Pages/ResponsePage.aspx?id=KEeHxuZx_kGp4S6MNndq2BVHD6pyd0hHqgn8qzKRvG5UQVMyR0ZYUDQ2SUg2VjJGSzZFUEhKSDYzTC4u)
- 🏠 [MoJ AI & Data Ethics Hub](https://justiceuk.sharepoint.com/sites/MoJAIDataEthicsHub) (SharePoint)
- 📚 [Case Study Library](https://justiceuk.sharepoint.com/sites/MoJAIDataEthicsHub/SitePages/Case-Study-Library(1).aspx)
- 📖 [Full Framework Documentation](https://www.gov.uk/government/publications/ministry-of-justice-ai-and-data-science-ethics-framework)
- [UK Government Data Ethics Framework](https://www.gov.uk/government/publications/data-ethics-framework)
- Data Direct
