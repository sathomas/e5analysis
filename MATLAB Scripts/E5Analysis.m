%[text] # Analyzing Heart Rate Accuracy for Tag Heuer Connected Calibre E5
%[text] Comparing the heart rate measurements, during activities, of my Tag Heuer Connected Calibre E5 × New Balance Edition (reference SBT8082.EB0394). This reference has a case diameter of 40mm and the case material is titanium.
% Standard MATLAB initialization - ensure reproducibility
clear; clc; clf;
rng default;
warning('off', 'MATLAB:print:ContentTypeImageSuggested');
ver % display version information %[output:205ddb14]
% MATLAB Code Conventions
%  - local variable and function names begin with an uppercase letter to
%    distinquish them from those built into MATLAB
%  - functions use named parameters instead of positional parameters
%%
%[text] ## Activity 1: Indoor Cycling 2026-02-04
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - Black rubber strap worn normally (hole 4)
%[text] - Reference data from Polar OH1 via Wahoo Bolt \
Reference = ReadData(Filename="Raw Data/2026-02-04 Indoor Cycling/2026-02-04-113319-Indoor Cycling-HealthFit.csv");
E5 = ReadData(Filename="Raw Data/2026-02-04 Indoor Cycling/2026-02-04-113323-Other-TAG Heuer.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Correlation=Correlation, TimeLimits=TimeLimits, Title="Indoor Cycling");
%%
%[text] ## Activity 2: Strength Training 2026-02-04
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - New Balance Velcro Strap worn tight
%[text] - Reference data from Amazfit Helio Strap \
Reference = ReadData(Filename="Raw Data/2026-02-04 Strength Training/2026-02-04-165205-Functional Strength Training-Zepp.csv");
E5 = ReadData(Filename="Raw Data/2026-02-04 Strength Training/2026-02-04-165234-Functional Strength Training-TAG Heuer.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Correlation=Correlation, TimeLimits=TimeLimits, Title="Strength Training");
%%
%[text] ## Activity 3: Tempo Run 2026-02-05
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - New Balance Rubber Strap worn tight (hole 3)
%[text] - Reference data from Amazfit Helio Strap
%[text] - Cadence data from Stryd footpod \
Reference = ReadData(Filename="Raw Data/2026-02-05 Tempo Run/2026-02-05-115742-Outdoor Running-TAG Heuer Updated.csv");
E5 = ReadData(Filename="Raw Data/2026-02-05 Tempo Run/2026-02-05-115742-Outdoor Running-TAG Heuer.csv");

Cadence = ReadCadence(Filename="Raw Data/2026-02-05 Tempo Run/GOTOES_processed.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Cadence=Cadence, Correlation=Correlation, TimeLimits=TimeLimits, Title="Tempo Run");

%%
%[text] ## Activity 4: Strength Training 2026-02-06
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - Black Rubber Strap worn tight (hole 3)
%[text] - Reference data from Amazfit Helio Strap \
Reference = ReadData(Filename="Raw Data/2026-02-06 Strength Training/2026-02-06-095932-Functional Strength Training-Zepp.csv");
E5 = ReadData(Filename="Raw Data/2026-02-06 Strength Training/2026-02-06-100003-Functional Strength Training-TAG Heuer.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Correlation=Correlation, TimeLimits=TimeLimits, Title="Strength Training");
%%
%[text] ## Activity 5: Indoor Cycling 2026-02-07
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - New Balance Velcro Strap worn tight and 15mm higher on arm
%[text] - Reference data from Polar OH1 via Wahoo Bolt \
Reference = ReadData(Filename="Raw Data/2026-02-07 Indoor Cycling/2026-02-07-091242-Indoor Cycling-HealthFit.csv");
E5 = ReadData(Filename="Raw Data/2026-02-07 Indoor Cycling/2026-02-07-091241-Other-TAG Heuer.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Correlation=Correlation, TimeLimits=TimeLimits, Title="Indoor Cycling");
%%
%[text] ## Activity 6: Long Run 2026-02-08
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - New Balance Velcro Strap worn tight and ~ 20mm higher than normal
%[text] - Reference data from Amazfit Helio Strap
%[text] - Cadence data not available
%[text] - E5 manually paused at ~ 27 minutes; time synchronization lost \
Reference = ReadData(Filename="Raw Data/2026-02-08 Long Run/2026-02-08-105400-Outdoor Running-TAG Heuer Corrected.csv");
E5 = ReadData(Filename="Raw Data/2026-02-08 Long Run/2026-02-08-105400-Outdoor Running-TAG Heuer.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Correlation=Correlation, TimeLimits=TimeLimits, Title="Tempo Run");
%%
%[text] ## Activity 7: Strength Training 2026-02-09
%[text] - Tag Heuer OS version 5.5.16
%[text] - Tag Heuer Sports version 1.5.8
%[text] - Elastic strap worn semi-tight
%[text] - Reference data from Polar Verity Sense \
Reference = ReadData(Filename="Raw Data/2026-02-09 Strength Training/2026-02-09-105822-Other-Polar Flow.csv");
E5 = ReadData(Filename="Raw Data/2026-02-09 Strength Training/2026-02-09-105825-Functional Strength Training-TAG Heuer.csv");

[Correlation, TimeLimits] = CompareData(Data1=Reference, Data2=E5);

PlotCorrelation(Reference=Reference, E5=E5, Correlation=Correlation, TimeLimits=TimeLimits, Title="Strength Training");
%%
CurrentScript = matlab.desktop.editor.getActiveFilename;
export(CurrentScript, "README.md", Format="markdown", HideCode=true, MediaLocation="Figures/", FigureFormat="png");

function TimeTable = ReadData(Args)
% ReadData() reads data from a comma-separated-value file and formats it
% for analysis
    arguments (Input)
        Args.Filename string;  % File (including path) to read
    end

    arguments (Output)
        TimeTable timetable;
    end

    % File is assumed to be exported from iOS HealthFit app, version 12.8
    %   - second column is time in Unix epoch format
    %   - fouth column is measured heart rate
    opts = detectImportOptions(Args.Filename);

    assert(opts.VariableNames{2} == "timestamp");
    assert(opts.VariableNames{4} == "hr_count_min_");

    opts.SelectedVariableNames = [2, 4];
    opts.VariableNames(2) = {'Time'};
    opts.VariableTypes(2) = {'double'};
    opts.VariableNames(4) = {'HR'};
    opts.VariableTypes(4) = {'double'};
    opts.MissingRule = 'omitrow';
    DataTable = readtable(Args.Filename, opts);
    DataTable.Time = datetime(DataTable.Time, 'ConvertFrom', 'epochtime');
    TimeTable = table2timetable(DataTable);
end

function TimeTable = ReadCadence(Args)
% ReadCadence() reads cadence data from a comma-separated-value file and formats it
% for analysis
    arguments (Input)
        Args.Filename string;  % File (including path) to read
    end

    arguments (Output)
        TimeTable timetable;
    end

    opts = detectImportOptions(Args.Filename);

    assert(opts.VariableNames{1} == "timestamp");
    assert(opts.VariableNames{2} == "cadence");

    opts.SelectedVariableNames = [1, 2];
    opts.VariableNames(1) = {'Time'};
    opts.VariableNames(2) = {'Cadence'};
    opts.MissingRule = 'omitrow';
    DataTable = readtable(Args.Filename, opts);
    % Double values for both feet
    DataTable.Cadence = 2 * DataTable.Cadence; 
    DataTable.Time = datetime(DataTable.Time, 'ConvertFrom', 'epochtime');
    TimeTable = table2timetable(DataTable);
end

function [Correlation, TimeLimits] = CompareData(Args)
% CompareData() compares E5 data against reference data
    arguments (Input)
        Args.Data1 timetable;
        Args.Data2 timetable;
    end

    arguments (Output)
        Correlation double;
        TimeLimits (2,1) datetime;
    end

    % Find the range of time where both data sets overlap
    TimeLimits = [
        max(min(Args.Data1.Time), min(Args.Data2.Time))
        min(max(Args.Data1.Time), max(Args.Data2.Time))
    ];
    TimeRange = timerange(TimeLimits(1), TimeLimits(2));

    CombinedData = synchronize(Args.Data1, Args.Data2, 'union', 'linear');

    % Remove data before and after the overlap
    CombinedData = CombinedData(TimeRange, :);

    Correlation = corr(CombinedData.HR_1, CombinedData.HR_2);

end

function PlotCorrelation(Args)
% PlotCorrelation() creates a plot of the two data sets
    arguments (Input)
        Args.Reference timetable;
        Args.E5 timetable;
        Args.Cadence timetable = timetable(datetime(["2023-12-18 08:03:05"]));
        Args.Correlation double
        Args.TimeLimits (2,1) datetime;
        Args.Title string;
    end

    showCadence = height(Args.Cadence) > 1;

    if showCadence
        plot( ...
            Args.Reference.Time - Args.TimeLimits(1), Args.Reference.HR, '-', ...
            Args.E5.Time - Args.TimeLimits(1), Args.E5.HR, '-', ...
            Args.Cadence.Time - Args.TimeLimits(1), Args.Cadence.Cadence, ':' ...
         );
        legend({'Reference', 'E5 Data', 'Cadence'});
    else
        plot( ...
            Args.Reference.Time - Args.TimeLimits(1), Args.Reference.HR, '-', ...
            Args.E5.Time - Args.TimeLimits(1), Args.E5.HR, '-' ...
         );
        legend({'Reference', 'E5 Data'});
    end
    xlim([0, Args.TimeLimits(2) - Args.TimeLimits(1)]);
    title(Args.Title);
    ylabel("Heart Rate (bpm)");
    annotation( ...
        'textbox', [.15 .6 .3 .3], ...
        String=['\rho: ', num2str(Args.Correlation, '%.2f')], ...
        FitBoxToText='on' ...
    );
end

function ExportFigure(Args)
% ExportFigure() saves copies of the current figure as files
    arguments
        Args.Fileroot string % File path and name without extension
    end

    SVGPath = strcat(Args.Fileroot, ".svg");
    PNGPath = strcat(Args.Fileroot, ".png");
    Figure = gcf;

    exportgraphics(Figure, SVGPath, Width=500, BackgroundColor='white');
    exportgraphics(Figure, PNGPath, Resolution=600, BackgroundColor='white');

end

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[output:205ddb14]
%   data: {"dataType":"text","outputData":{"text":"-------------------------------------------------------\nMATLAB Version: 25.2.0.3123386 (R2025b) Update 3\nMATLAB License Number: 41249549\nOperating System: macOS  Version: 15.7.3 Build: 24G419 \nJava Version: Java is not loaded\n-------------------------------------------------------\nMATLAB                                                Version 25.2        (R2025b)\nCurve Fitting Toolbox                                 Version 25.2        (R2025b)\nOptimization Toolbox                                  Version 25.2        (R2025b)\nStatistics and Machine Learning Toolbox               Version 25.2        (R2025b)\nSymbolic Math Toolbox                                 Version 25.2        (R2025b)\n","truncated":false}}
%---
