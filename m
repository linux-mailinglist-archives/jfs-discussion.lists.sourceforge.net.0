Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADE495D54F
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Aug 2024 20:30:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1shZ3Q-0000Cz-MW;
	Fri, 23 Aug 2024 18:30:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1shZ3Q-0000Cs-5P
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 18:30:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2CWnCeGiMgup4UU00VbrAMNNyeCMYrBF0CQ6uFT0mUU=; b=RF92bNlBVw9SACtScd3oftWzN4
 GKoV2Q5YMePMf+WpCKFDLtvjER+V/qDHnO/C4omIhllu3Yawd6PIoEhVxpmx7pI39Xo8nJvMIjRLY
 PcavOeJVi7B2m80Qb4YhkFhPblUrqRJyzoBRYb3919RFdmeW7cwWMk2AUe01qS740/mY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2CWnCeGiMgup4UU00VbrAMNNyeCMYrBF0CQ6uFT0mUU=; b=j3j7lWDtqRndVAOt7x1gq8CSp3
 cS5oe6eMURBYeItQ6WGwAWSkuULEjpF6r4dLVFkfTE+9wBSTuDhLaKdATYynN5gXUwmIfti5JzHEv
 qU6UjPaU6zaCj/tFM7Fp5HucuZpPzwFhE/MKXoBurWmhkyTZHkD1jrn5ni2D6gBYV0Ww=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shZ3Q-0007gT-56 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 18:30:32 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47NH0X4O025165;
 Fri, 23 Aug 2024 18:30:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=2CWnCeGiMgup4UU00VbrAMNNyeCMYrBF0CQ6uFT0mUU=; b=
 XgJSO5QEzE/bq9Aocd0b42GNuwUW3IMJ9d5utctXHgW6c3m1A7vpusEjZ7axU5cp
 5PctKmBsHOYwYtylIs5KmWzAtxxkhoOBZzjWS/UA5k1o4/6Hy8q2FlYHjbH7kER+
 yBU3jMRpvuBMEPmMcySPKL8ZASXIRbPWSAnlumekAg9Rn22jZRMpFuAH0kv5wRjv
 NcheXyP5P4+j7pX2Bzmh29gbe3LfxSwM0NoGQwNbsjwP162D8LE9O3JSC+kL1ZVN
 StHLnPgReEfJzn7SB4XbsyE72BMIOn/EQZXmZb2QeU/vmjbd7A/SsczbVZkIl01W
 feIVjkIZ9saweexKuu4XYg==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 412m45n190-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 18:30:25 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 47NI2q6r016993; Fri, 23 Aug 2024 18:30:24 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam02lp2040.outbound.protection.outlook.com [104.47.57.40])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 416x5am3a4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 18:30:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ut/X8I7FYd/GGghKhDQF1nwv2A5SCtr+01nefA7jSG1bMB2skrejBHNtbkmRBcQN8RtUG5dDUV8Oke/hucp808H3h2jsy7Kr5z97B8IvrUoAC8tAwqmBNsrvPHI2EGBX/TeiDYng7/TRwbVc/dpvYXRATo0/luUIG7y6NIwi8dawPrdo6nnTKJPEk/1Su7fUht3ajxaLFUTQ4ZotEGDr4fysbXRgqULvDAcI03fexX/Uqj86Q3VjSkFArw3wxQPOJLDGh4ly/1SPZKYH6qBw0rCNy456pFvMGtRrfWCzz699sgoGY6K7yDW69QNs4mFnKzsJ4n5mFmtQHbN1c149ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2CWnCeGiMgup4UU00VbrAMNNyeCMYrBF0CQ6uFT0mUU=;
 b=IjeiYeFmeHGSKswNiB1rxi7y/vwz/l+70ZXYA/9DIAzh3d7FvBJ/hVHawSq3y44R1ozR3V4I9MuiUJDUdJC6I1Vo0KEh7ToAODBwHsYwb2VVhMxEssjL/R1oHcou+L/jI1VzP5lisfFl2gTn3pQ1ulfm2uMGux7akIxJsBphxCP4/AKp85/qd/Pv4ht7rqUX9fIfOSCPqu8ppRvT03YTlNsXGCbKa/txxFnBVPT1I5bKiVRZGDxrOj97zighBzN3eBhcrusz7NIbK00fVjMNWV44fM3A9mO+1y7npdyy94CPSGItYOHxSOD5U1GStcgX4dMD9DT+tRhUfUNcFVUfhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2CWnCeGiMgup4UU00VbrAMNNyeCMYrBF0CQ6uFT0mUU=;
 b=Uc3v2ghInKz9eAdJxZAzEcUnb91xv+RxE6KnsT5UOSMiZePqeRYb37VHzgGH4i9s+r8JrWVCDbpNVakiYD4deW6hXdnW04LrcHpV9MmFwfNwYAEoi+ZZFJ62Tfx6g1WMMXfhvtCPFj5n53V8WJu78T6SjxbZ+8ZcyiL3dLzcug8=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ0PR10MB4765.namprd10.prod.outlook.com (2603:10b6:a03:2af::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Fri, 23 Aug
 2024 18:30:22 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%4]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 18:30:22 +0000
Message-ID: <386ef374-25f2-4a10-bd15-0913137f1c9f@oracle.com>
Date: Fri, 23 Aug 2024 13:30:19 -0500
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <c8b1c258-740a-412f-ae0b-4d68a53e698f@oracle.com>
 <tencent_5D0479366FE42D1D6DD09554EA66ED9ACC0A@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_5D0479366FE42D1D6DD09554EA66ED9ACC0A@qq.com>
X-ClientProxiedBy: CH3P220CA0009.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:610:1e8::27) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ0PR10MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 194e1a3f-7df8-4f94-54f2-08dcc3a1a62a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGNxb3hNYm1XblMwM0xWSVJaUloxdVgyN2IrWWN4dGRqVkNYQkY2QjBORkFF?=
 =?utf-8?B?SmE2Y2grUXRCOHBRUEhPcmhrT0NOd0cyWkpPTkZGRUh0WlhPd0RFYWlwR0lK?=
 =?utf-8?B?bEhVNmw3REVtWUtKYlNleXFLbkJvTndEeWxZU2VwTSszakpXSGZYbGRxSUc4?=
 =?utf-8?B?TlRnZVBVY1BkazdKSzlsZ1BKS2xIV1hPekR2cU5iWDJ1VXFRVU54VDR2SXcr?=
 =?utf-8?B?YmNUTjhDYjFZakZ4UnBTV1RJRDZubzhrNnBzRVYzS3JiODc5MmFKS3VqWC9i?=
 =?utf-8?B?ME1VZlFodVYvVzJVUVNLQ1liMnJmTFNoSDd0anZqNExBOXFsTlFHZUxwbnRX?=
 =?utf-8?B?eEZCZGQzV3ZWM1dwQUNWNXNoSmtWYnQ0STlJWWlvUlpaQzhjWGNlQXBmM0hX?=
 =?utf-8?B?cVdvMHFjVUZyQmR3dlNvODBXYXZtMDg2S1NIM3BWSFlpc3JzZVlNUkpLUEJF?=
 =?utf-8?B?NUxTME51K2E1ZExLUWNYV0xJb3VUc3YvRDQ4NktKYmVBQVZKdnV0L3BNNmtP?=
 =?utf-8?B?di9pendDU25HZXF5RE5uM0tZMzRnZTkyYVlOQzNPN21ZdDhLNDA0emYxV3h4?=
 =?utf-8?B?c25TN2NIMHAwdnpvUG5odE1LRGs3TnFSNERaME9ZNFU3RVd3dURDNStBSkph?=
 =?utf-8?B?QzZFV3ZFSDZ5RHh1bFQ4VHUzdzU2bXY5ZUYvSHpUcERLTXhzQUhHaG14cExv?=
 =?utf-8?B?UEVDZytMcXBYYXRFWDAyYWFoVXdXL2RwTFI0V09zUzI5OUZpc29EdTFTYlFG?=
 =?utf-8?B?ei83YWdzeXp6YU5EQjRGZE5UZFZBTHZHTGRYMWlJbUpIZ2lqVGZjbVIyMG9z?=
 =?utf-8?B?M1pwT3FWZUt2MzFTL2ZSYUpPcDNKek9aSEFzQlJ0TnlIbGg0NmtkZXVtWC81?=
 =?utf-8?B?K2hwZnBOQVlNV3VDdnNSd3pMUjVFd0MzektpbU1lMDd0NlljcU16VDdiWjU5?=
 =?utf-8?B?NkpiVHhrbmRyUDRqajhxRXpQbEJoT2JKNER4cXp1MGt2ckdXM09hVW1mVitY?=
 =?utf-8?B?ZE9EQkpNWEh0UWV5djlUc1YzblBLeWtXZFNXMEprcXk0R2wxa29mdkh4M3lV?=
 =?utf-8?B?RlBTTWNMWEEza1ZrUVdIZ0wvSjY0bFVLWjc0bWJzWHI3eWZGSG5tZ2thRGVx?=
 =?utf-8?B?VFpZYUJDZHlJbkZtN3RDN0pzdmwrVyswQ2RSeWRlYm9mTFh5NWRUM1dXMVhU?=
 =?utf-8?B?TzhzaXhZcy81dWk4Wlc4RWFZczJYUDFEcWdjdStkZTd5SWhGWTA5aEFubXlL?=
 =?utf-8?B?TGYvbTJ1ei9MNE1SZGhGSlA5Vm9ZM1hOTEdYSEpsZGtkc200NTNyeFltRGpq?=
 =?utf-8?B?WmpESXYvMTVtZ1JUNkM5eEx6eVVRb1g4ek1ScmpKcEJIWTVnc0dwcHE2Wk1z?=
 =?utf-8?B?ZUtBVEJqRGFzL3hhcFJ2VDA0TkVYUmFsR0ZaOW5GdlFRT1hvT3dGdWtWZ3RJ?=
 =?utf-8?B?VXU5eFBRQlg5T1g1SW1oc1pMdytlQzVQZ3FiSS9NNEZtRjlxdEg1Ky9tTENz?=
 =?utf-8?B?Qno3WWxEUWRiRk15K0VYUVRyQ3Vhbllta1BURnEwWnpqQU9McVVhUE5mQXI0?=
 =?utf-8?B?Yk96YVhRdURBZ2RkTlNWaGpKRGZkVTZsbjUrN0hJQXFHSnpQdER2QlRmcmxz?=
 =?utf-8?B?cUJaM2lhVTk5ZG1pMnR3dXplZTA3cEJnRTBRRkJZUExQc01IZUQ1N3FaS3Vn?=
 =?utf-8?B?bWRWRE9na05VR0VmeVJ5Z0hQeEkya0dFUTgzT1hEVzRJbGNBSUJyT2cvNlZu?=
 =?utf-8?Q?GES+t+vlMcjH27k/PE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dndMTmtzdHJmT3FJZXdvSGtRa3JhMG5leExNYzVCN3BVMFMrQmZpOFVkRVFp?=
 =?utf-8?B?QkhmdkR1b2U2bjZCUnNYemNOWmVFdFVaU09EOFZTUnE1SnpXZXBLMkVBVytV?=
 =?utf-8?B?a1ZWRHY5WjlXZjNaaU4yc3VjTTRoK3RPVGxuK04ycmlKMFppNjdMdmVoOERx?=
 =?utf-8?B?U1RPMVRJbDZtWjYxUkVaeEdEZXR0Y1puUGh5ajI1NWhha29CcDRJTGRlQWN4?=
 =?utf-8?B?RGRPclE1R1FhV0lPY3E5TU41bXdMM2FpOHZRSUxvempTL1NoUUxRRjdROGdx?=
 =?utf-8?B?V1VWNW0vbjg0OUZSNVZIUnRWVkNzbmw0NTI4QlZNQUlKRjM4WHRad1NEWGps?=
 =?utf-8?B?bzZMWWxZTlorZVJ1Zk1FSU9LNWx5OTROcWI5amQ2S3JmNXRVUUpqZitXeTRS?=
 =?utf-8?B?T3ZTaHBBQmFtMU9kT1BZOXZPcml3NnFUSFBWc3Boalg5Qk5EM2Zja0NvTkh0?=
 =?utf-8?B?bkl3TWVZWnUxeGZhZXE2R2xxY1pJVXBnZllIVHZLd0ZQUEZSSHdFdTUwUFF3?=
 =?utf-8?B?RDRHVE13UGdmdllJeHNkZFI4RmF3WTVxUW9FRDdhYXo5VXErUnRTeW5oQk1y?=
 =?utf-8?B?MjhRQ2RoZkZ5cFFKdWZycmFJR29uVm41LzJ1ckIzMHVBODkwMHJrZzVPYjF2?=
 =?utf-8?B?WlhpMHlKZk1sL0g0ODFoOTZqWHdlMUhTangyYU4veXIrMHUzckpJQitjMmI1?=
 =?utf-8?B?bTYzOXRINGZYK3E3cTZpTjlrUmR2ODl0TzcyTXFLdW9WRjlzQ29UM0d6V1NO?=
 =?utf-8?B?SGFoT3ZneUtmMTVGMmQwT0s5cllaL1VSbkRiQjNzMThXdWNVQUNlaXVnZWps?=
 =?utf-8?B?WDZNaTFzRm5Id255emR6MGgzUnhDL1Jyckc5RERjeStUY0Z4a2ZjamN6TXFq?=
 =?utf-8?B?dTJYR3RNZ2d5VVcwdS9sVmZ0aGlEU3laY0wxYTh6R2c5b1ZIcjB3Qzc4cnBT?=
 =?utf-8?B?aTVyZGdWT1FxV2NJZGpiU1R0Z1dkR2h5cis0dUJ1clNvdTZYMHJTMkpQRDRE?=
 =?utf-8?B?ZzR6L2trMkJMNTlCb2twbEFGZmNNOFVlVzJobllodDUzKzN4cElFSmpzSFRa?=
 =?utf-8?B?VkNPQXU2VHpoRkplaStqVnZxUlc1aGY2Qm1VclJndUdrUWVmRWdRWmpBS0xH?=
 =?utf-8?B?YzJuQVhJNW5COWNsSHNrK0dSc3dNYktOVkxHRmtybXRzRmoyRXdjYjN4dDZ0?=
 =?utf-8?B?T3NVbHBmbHhTc2FENHFQZUxjSHV5MDJ1ZmQwaU1SMWtFbTRHaHhkVHBqUzI4?=
 =?utf-8?B?cG9iaXB3QU5FVXo0S1VLaVlTS3VHQy9QcXluSDZuU3dVOVhHdHNVSHh6VGNX?=
 =?utf-8?B?VFN4L24vam41Zk5TNWlOZStMQ2FBTEVTR2JHWGcyZW5SR2VackJKSndqMEZw?=
 =?utf-8?B?OVA3V2orU09tbnlJZ2QrZXpoeU0yYWgwTkVvVWtoZ3cyQ2NrRkYvK3ViTDdT?=
 =?utf-8?B?eUZUVVhGVEplZ2xidjF6bzh0ODZDY3Y0czNRMkNFK0pFZVAwWkoxN25mcjV4?=
 =?utf-8?B?YmhLd21YdUxLR21MS0s1OWJOYUZoS1VYL05SL01hWW9JRDd5WWd4ZWlJOGFn?=
 =?utf-8?B?WlRKY0NDZXE4NVVhbDl4MHZIeTVRaUFwTEE4SHBjbUhrM1Q4MlJibW00SDMx?=
 =?utf-8?B?N2lSSUR6Ni96V0dJRFlkbFd2VGpIaDkvSS9icFp5cEhGZlQydlE0U2c1bGc3?=
 =?utf-8?B?KzVFQWZnbFR2MlRkN1o4ZVdBOHkrMXJtSDlKRlBUbHlXRjQzcWNDOXFPU3M3?=
 =?utf-8?B?dGlScXRuNVRRRHRvS0RHcnlnTEJrZkdDNDNqUktLRlprNSsxOXhmekt4UFlE?=
 =?utf-8?B?QUwwT0JUT2l2TW9uOUE3WmlTczhwbFp2RUFLN0ZDaEt5ak5aNWVrYW9YeHJa?=
 =?utf-8?B?cXNqcWdMNkg1eXVUYUxkeTJGa1VLNW9YMmdaYXJKVHBSMHBiblIxbUhrYnls?=
 =?utf-8?B?STJQalNzSXJGbGRkaTJsYkk0cGJOUW1XdW5WUUUyVTdwa3Z2b1RGUGY1c0hw?=
 =?utf-8?B?bVEvcm5HRmVoNTFYYXdJNk9UYnBHNURFOStpSWs5WTRyT2J1dG5RSkFNbkhm?=
 =?utf-8?B?Yis1bnhWVjhsOHpkdzNqT04yM3owZ2pWR0x2RTIvZjlDdWY3cGNNRTBLVUgr?=
 =?utf-8?B?eU1WcjV1aFNkSW1MbDdkR1JVZDFMTWlTOUVTVVo1T2NRU0x3VFBFZmt0WTV1?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: J2y5jlKQ34xFAeil6YpNWbuSvDDar9+gnpLWtI2euQ6vzYGDLYFng++YoroN8aW16nsbs9QWPlLOmU/JuX+KcLmd0UvAmWvq9NS/pWQmSR7W7lBvdQ9RdZqtq99O7cfa0cju1UB3vqyVZu/IHj9WKAlVwFGcv8ceFZ+zRXmcA0R7tAn6oJj/FCvO93L4yg64MAfvrveQED4Z9wzFNDVQjOg/PnyEf6GQySxi5swgRruFi3Kopq3FpFexOTmN77uD1dCviNfenUCtz/RQKufiMVN+bNOH8gik7c6zMeefB7yy3oa3BP9Dy9RoaC9l3rVohhKdcBOy+adjvKqcBmUEM8Hdcij7Aws19+lTuuURwN7Id2bpSNDlLFeB2Iew2xUgrTHiy7CguIQbc/F7UKk8cVOhRY868XB9Jtfp7BdTk/rn0jzS3CIStCpAtAm+fwIVtA5zDRbkc9Py04Uaz+uSVv1+MGDu00g3Qdd2CPrkQ2U34qeBm8yDLQS1TsmoqzXCRAilhfoWvdWf1U0DQ7GdVV2Qq6YHvLdjUE8HlGtHIqE5K/04lwlK3v0v4UC1zB+4dxixt5YB5i9Esim03h05UoCOuWEF5QaTkqvGWlgjYrc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 194e1a3f-7df8-4f94-54f2-08dcc3a1a62a
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 18:30:22.6334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rcv0T8NCbeRDXcHgJIpmfWhs9h4/ekq8EDyz3DjLgT8IvaN5GJO509J+9JKn/kMuKZq5Ro2YKoTvcHt8jfhQCh6JHUJNxYw+xfkzDcZr8ks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4765
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-23_14,2024-08-23_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2408230135
X-Proofpoint-ORIG-GUID: l3DPaOQ5C4WBoO1iljjsMQSGdOwjOHMQ
X-Proofpoint-GUID: l3DPaOQ5C4WBoO1iljjsMQSGdOwjOHMQ
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/26/24 8:42PM, Edward Adam Davis wrote: > syzbot report
 a out of bounds in dbSplit, it because dmt_leafidx greater > than num leaves
 per dmap tree, add a checking for dmt_leafidx in dbFindLeaf. > [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.165.32 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1shZ3Q-0007gT-56
Subject: Re: [Jfs-discussion] [PATCH V2] jfs: check if leafidx greater than
 num leaves per dmap tree
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 7/26/24 8:42PM, Edward Adam Davis wrote:
> syzbot report a out of bounds in dbSplit, it because dmt_leafidx greater
> than num leaves per dmap tree, add a checking for dmt_leafidx in dbFindLeaf.
> 
> Reported-and-tested-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_dmap.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index cb3cda1390ad..516bac758053 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2976,6 +2976,8 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
>   		 */
>   		assert(n < 4);
>   	}
> +	if (le32_to_cpu(tp->dmt_leafidx) >= LPERDMAP)
> +		return -ENOSPC;

NACK. It needs to be smarter than this.

dbFindLeaf() can be called with a control page in which dmt_leafidx is 
bound by LPERCTL, which is larger than LPERDMAP.

>   
>   	/* set the return to the leftmost leaf describing sufficient
>   	 * free space.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
