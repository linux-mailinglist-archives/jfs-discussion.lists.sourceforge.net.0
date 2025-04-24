Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECDDA9ACFE
	for <lists+jfs-discussion@lfdr.de>; Thu, 24 Apr 2025 14:14:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7vSn-000297-WD;
	Thu, 24 Apr 2025 12:13:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shivankg@amd.com>) id 1u7vSi-00028u-73
 for jfs-discussion@lists.sourceforge.net;
 Thu, 24 Apr 2025 12:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M65vhYTeJHWsGSFQeE6ozO1XCnXx7QeeXx32xcYlvYU=; b=WbfKaD3MUWREpfh9U9DKZHUyhK
 kPgVQGvqjR/3CoxkCOyXCFgUr+B7jrXzH+rvBdu5iPkIG7yLSo4SaDlz4clhwPMF+lQ1rV3de4vqi
 zbOvPNfaxTMw2OJ+tQmeKCX46VtRoz4hUNgyfQsBcQJFh0voFQmAGULXsz266cLXWpqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M65vhYTeJHWsGSFQeE6ozO1XCnXx7QeeXx32xcYlvYU=; b=U61/EK++htHNQLRshNw/EHbbjV
 LAgfzQ7y6hQ84XRL/nJd/gu2Lj70Ii8BDVJlc0MLc2U4VPfwu7emlGi/D64iOGosAeq1cl53gZs05
 jVNlPShlV/sKk3AZR4rjQXG3W56yh8QP77nUuUGSMp9NrlZjQ5wR3ExmvzZiI/6Nc54o=;
Received: from mail-mw2nam12on2043.outbound.protection.outlook.com
 ([40.107.244.43] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u7vSR-0006Rj-Pn for jfs-discussion@lists.sourceforge.net;
 Thu, 24 Apr 2025 12:13:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xqCWR0Wbt3AZzHt79e4M5Vje/UTmewPwYjJ3pJ3x1WGQAbvy2YxZHgcN7Bg4HYCcmHK9jCDjGEWc7OABWxNYk2UKOFr2asPebZDVmZTEyZJAVY9ZHLThOD7SEJ4gzQdxPwYZCzr1hH54cU6bR2E9CswSsZPs80gwTHVLMXWZesdGBF2CHoRk3el+ATnqdfYC4WfkPYjp2tQEPazfdDfwe7TfOJQzvrFYMZ3+3CIzZ9N1CxefDbSX6rlnXy+zn7/gnMlJKTkbR0ibnogxVsI4lzRMzWqOQGV9E0D3nFstLpsnGanZLLgjp++5BDqmgKb6KxwpA60dmCy94+9PZC91xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M65vhYTeJHWsGSFQeE6ozO1XCnXx7QeeXx32xcYlvYU=;
 b=wPFNge0zGtL/TXgLaWnb01kNRRyd2pJA2xGzrLbqBI6ArWsQGQ1D1G7ZX2k+oLLWGdoOLWj/7kUAcllfJaJWIsiSF1JYFSKFVSyAM2nWptkCXyRormBXCEDKREcan+jgiv6n1u71QkzBBUOPoqWloQeHsx37Ig7pLAEupLSR/QJqedmt5mE2dqkyu4rKDty2OnDlwq0SsCWZGC2qpJlpm+WpnVdTvw/9DLzZMT5ZUifuvDVFWlhWsg2j1cLlPwtifoxpVdU7nU9Wrb4OIyv6HgwSvnVp2cIe8cAdjtgZ9O0ebna84fJec7Y64idn9Y8lxiQov9vnPufq38tGnxuAjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M65vhYTeJHWsGSFQeE6ozO1XCnXx7QeeXx32xcYlvYU=;
 b=IjSnLOcqPqQ5fGj42NAIn2FxVawp0wukilfmRrK9vWcZxU/N5hLy1W1Eb2fFuAsYwqnu09OgidYMY2OVdDRKIcbRk1vpWoOoYbDJszTSu39zFyC4jmo3BawwZLT95xwGR2xwnPkaLz81JRlZ1OGKnn04BzKuxUAxR9S6VtG5vk8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CH2PR12MB4262.namprd12.prod.outlook.com (2603:10b6:610:af::8)
 by CH1PPF934D73F2C.namprd12.prod.outlook.com (2603:10b6:61f:fc00::61a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Thu, 24 Apr
 2025 11:57:56 +0000
Received: from CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870]) by CH2PR12MB4262.namprd12.prod.outlook.com
 ([fe80::3bdb:bf3d:8bde:7870%7]) with mapi id 15.20.8678.021; Thu, 24 Apr 2025
 11:57:55 +0000
Message-ID: <7ff5b149-534d-4bb7-8c6d-3147279d3fae@amd.com>
Date: Thu, 24 Apr 2025 17:27:47 +0530
User-Agent: Mozilla Thunderbird
To: Matthew Wilcox <willy@infradead.org>, David Hildenbrand <david@redhat.com>
References: <20250422114000.15003-1-shivankg@amd.com>
 <20250422114000.15003-2-shivankg@amd.com>
 <20250422164111.f5d3f0756ad94d012180ece5@linux-foundation.org>
 <aAg1-hZ0a-44WW6b@casper.infradead.org>
 <b84b6c31-578f-4abe-9b06-6e7cf4882eb3@redhat.com>
 <8f24de4d-5088-498a-968d-9e8bb85201ac@redhat.com>
 <aAmtzAv6ZbbRpKHM@casper.infradead.org>
Content-Language: en-US
In-Reply-To: <aAmtzAv6ZbbRpKHM@casper.infradead.org>
X-ClientProxiedBy: PN4PR01CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:279::7) To CH2PR12MB4262.namprd12.prod.outlook.com
 (2603:10b6:610:af::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PR12MB4262:EE_|CH1PPF934D73F2C:EE_
X-MS-Office365-Filtering-Correlation-Id: 360c8698-202a-48a4-2a62-08dd83273fc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFl6Tys3SlVjUEx6YXpGZ0pVN2xXcHEvbDJyNjI4QmdadERiZjE1TUp3WUVQ?=
 =?utf-8?B?VllacUxOVFJacVA1VGowUFRqN0Zkd1dlQ1p0Z0wydm45NE4xb0VrTlhEM0hP?=
 =?utf-8?B?SkRUZkNpTFFHM2FqRE1zTUI3SVJGdVZzZHo3Y0lkaTIzeVFFNWU3ZGJsVnZK?=
 =?utf-8?B?dUJUOElpRjZFRkEwN2U3Mnk2SjdlK0dmUGc1YlRldVhIL2RONmpLYnFZZjQ2?=
 =?utf-8?B?VWZISmRMMjBHdGQvQ2tJUXVTRmMxZ0ROZ0RvMlh0NmZ3bUZGMEZEdGVBc1VN?=
 =?utf-8?B?enFEN3dERDdVN1pPZ0ROM2lzYWEwaHplZzlQQzZRV2xERFoyS1JmS3ZUSEwx?=
 =?utf-8?B?aEZVUXd4akY2T3hSZmFCTyttSmtLN0djKzNWWXhmS0RSWDVUak4ydFE5WWs3?=
 =?utf-8?B?a3hhbUJramNVY1dXS3AvQVJxRWUzSVBhS1BUcldQNXhGblZEbDVYZnNoRmdY?=
 =?utf-8?B?ZkZYKzFDRU9kV0dDS2lTY3JkczRoMWdnVEZrRlpkVlhmc2ltWml4UWF6eGFY?=
 =?utf-8?B?SzNER3FkS1ZNR3RWWGgvUnFMQkNXY1llWjZUaW1MdlpIL2tYbnVuakpSMnRL?=
 =?utf-8?B?N3hvVG8yV05qYWVZL24vNkFnU1lHSUYwUHZOdnhKMnp4VnJaZk56RlgzSWRB?=
 =?utf-8?B?dEVOQlluWE82Q1d6YWl1MHlEY0JCSU9nc3BMeldNRlk0WTI5RjFzK2tlbUN2?=
 =?utf-8?B?aDR2M0ladzJ0S0VQQTcvUHU0bGFNOGozbXZteWo5N3Exem80b0cvcGlDcmFG?=
 =?utf-8?B?MlF3MVM0MklTSHhNZGFZeXZtZWYyRk1HNXlQWlZUQ0FQUjdzUXhiOVRYbWNZ?=
 =?utf-8?B?emlSMVBQQ2ExTkZqM2ZwKy9FTzNVUHo3bWs2OTZTbTc0UzlEVUVoQlZOdU5n?=
 =?utf-8?B?VjhSMVZ0eWh2eTA0bCt1Unh1RDhsUmI1KzhKVkxpeU9KSERjaVUxSkozMHNC?=
 =?utf-8?B?K2xJcGZ2aHRoZDJKZmRwb1B1R1hkZlU2NzFDMUc2eFZ0NG1hWjJmTWRHYUNJ?=
 =?utf-8?B?My94d2V6N2JoVmdxUjBjcTJ0NVE1aWRrN3ZlS0tBMm1QZ0tzRmpQNHJ4UjJi?=
 =?utf-8?B?L2VLRUtpUm9wQzhia1JCVTRyeHFrQ09kc1hMZUhqcUIwRWhYdVBEamxyMTcw?=
 =?utf-8?B?S2h5TFRDbEJ2UVRHWk5pV3JMTFFIemdTVDcza1hFQXowS2FUK2pLMXNVckFm?=
 =?utf-8?B?RUJEcHc4eFZ3eGZ1TlYzVVRzZTNaQ0haRkxxZGprUUhWQlNVYTB6MzJGRGFq?=
 =?utf-8?B?alpNUENIWkh3cDNldUgzOStPTVFsbmRwOEJuMSt4TjN1US9oanp0V1hwRXFl?=
 =?utf-8?B?aERDajdwL3BHQkl1NmtRS0pTbUFXK090WXNYWXozRHRPL0phbUxLZ0p0VDVu?=
 =?utf-8?B?UVk1V3k4cStEZlVaL3R0T0dVMlI2blllQkJOQ0xFSDZrNlpjbDV5MHl4RWRq?=
 =?utf-8?B?WUwwVmtWajlzNVFLKzVvdm1EOXl5TVNpMzhicEc0V2dBS3JJRkVWMGpZQS9Y?=
 =?utf-8?B?RkVLQ21ieWNvTW9DMFdVNHZUSHdmaFplNzRqNm9veXVtd2dLaE8xMm05YURk?=
 =?utf-8?B?TU80d2FkM1VzZW83UllhcmExdGpvUjE2MitCdDZYa05xb1dRdGsvVnBGd1Nt?=
 =?utf-8?B?ampHazFrOXVFanhwTHZDZzZaY25zdW5HMENoUnNjTGRqd1BCaTJWajgxWi9x?=
 =?utf-8?B?a1UrTmIzSWl6bWp3YnZkTDIrTVdBeHdhY1pQL0g4ekpaWm12b1FTcUxnY0R6?=
 =?utf-8?B?djdmdjNxbllQTndpVGpYTE9qT1duWE1RL3lpa0FYejZZQ3RNV24zdVg0aGI4?=
 =?utf-8?B?ZU9NYTRnME9yUHhEK2RwaDNJdGYrTyttdVZ2NTluNUtOT01iRVBvVHByM0dp?=
 =?utf-8?B?VHl0NXZUU2hmOVNtL3VXYTQrc0lzSDBDaURUMGNtV20zU09lbWRZZkJGRVdP?=
 =?utf-8?Q?W9Gs9ywVKvI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB4262.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zm5wT2hGWjBialJvRldjTG85Nk5UeGZrbUZlQ0t4aCs5NnVnQ1dlQlFyZ2xM?=
 =?utf-8?B?ajZOejVia3g2bEYxNlc2WVRKZTlZLzRqaVJ3UEh3cXpmY00yRDFvR2JObUMy?=
 =?utf-8?B?RDFzdi9UOVVIRVJ6Tk1CK0RGaW82aTlTbXl3MEVFWmVFdnErc2laUHJ2Y0gx?=
 =?utf-8?B?TStSU0FON2hlTXNBdStXSGxZaFhva0M4ZmtBSFh1TTZ1aTArNTZMZmNlR3R4?=
 =?utf-8?B?ajA2T21wb2hiN1RKMitEL3BRRmtXR2MyaWlOeHhENmYxcWd0T0VvV3o3VDZX?=
 =?utf-8?B?czRzUFQvcEdFcWJtQXFNS2VhSVd4VUoxSnJ3bm1PTTU3SlM4V2NjWWNsZGtV?=
 =?utf-8?B?UW9Pd2kzWFBzajc3R3dQVEZLcW54WUFyVXlWam5ZdWtMemJWNlZDZG01MVNj?=
 =?utf-8?B?dVBvZTZYNllNRjVSa3dqVkdCYm83UDZEWlRhRXRMdnpZWWpZUTNZWEoxaUpK?=
 =?utf-8?B?RkpxTFJMRTJ1cEFzZDFyZnBMVGxUWlVPZHZBRkEyWk85U2NaWGJOeXQ5M3Vr?=
 =?utf-8?B?UG1XOEk3ckthcitmc0JpK1ZYY1FTQ3ZBVitzMTdqbEMvMi9pbkVwRkZRWHhv?=
 =?utf-8?B?QnBMaFFFUGpqU3IrOVlHSmlUSjdINk5kV0pLeUJRamVzb0FyUlpIWGc5Y1JH?=
 =?utf-8?B?QXpmNkR2QkJXVFh0WXZ5cTIyZ3hTb0pxeEpjYVBDNVhneElqL2Y0RkpIbDY1?=
 =?utf-8?B?eE8zQkJ2OC91V1dlcmN4REZhV2puSm1ReGJ3bzBFTnRqNDV1QlRsUTNFS0sr?=
 =?utf-8?B?UGROVkhLSDh2d0NiRlljeWszb21obldZS3FZRmxYZXJteTBmUExyemo1VWZJ?=
 =?utf-8?B?Yk50Tk9GLytsM3RFUG52R0FHT0VsakNaK3poOElnTGFtZ0ZveFc0VUxOUjUv?=
 =?utf-8?B?QjVYaHExcklTRVhWRGtZYWcvNEFsc1ZtZm02bnFFeEVQTlNNbkxNS0tNd3FB?=
 =?utf-8?B?bzJkVm1WazRsM1ovc0lrOGlxcThTa000SnhtdWhGL0E0VldkSWNBREZDUllW?=
 =?utf-8?B?MWF6NHBjNWlreWh0RDBEYWtBemNId21DWklmQTlTRUw2Zmw0ZHdUVXpvbTNT?=
 =?utf-8?B?NHlSUmZSdG1VU1lFbTExZ1pTQkhqUEQwOU54VmwrdWw0N1d4L3FUbzZVVHI1?=
 =?utf-8?B?Ynlpckk5WkpHUld2R0IvejVINUR0d0FsMEwweHVUVkI5VUEyMXRPbXFGcC84?=
 =?utf-8?B?NC9KOWlZTml4UEdSbVhhdVAwbm4rQzIwRlZ0U1NyOW9WSUtadTlSejk1R3Vv?=
 =?utf-8?B?YkRvVkVJYVp2ZjBob3crWGFBcFYrOWhkYXhKQS9kRzZlWDhPbDdsL0RlQTQz?=
 =?utf-8?B?d1lPdWkwZXVlcFpMeitsTEZwTnVyc2ZpUGZndFJEUG13YUtHV0k0eUdUN1JH?=
 =?utf-8?B?czREb0hxSld6NW16OGJ1WmsyNE4wek4rVEJVOGpVVVBsY2JCOFVrRTMrQ0R4?=
 =?utf-8?B?NmlpNmRweTlZbGhqYnhzdWNnSVZjRDhXWDN0WVlsU01GcTgrVW1ydVhNUTZV?=
 =?utf-8?B?ZVd6Z3JncUI0NGlvYUJxWkdIWTJLY3UzbkVxbkRsYkkzZWhOQXJHRTBVRThQ?=
 =?utf-8?B?TnlZY2pvVU9EZmlsWHZQdHZVeHhDU3NYNEhXUStaSklLc2xxbHFlTzlnVmZO?=
 =?utf-8?B?WjRTbEhwdWI1NWpQcnJ3TmliYk1wWGkyNHl4NXk4bk9YaGRNc0tMYlMvMG5L?=
 =?utf-8?B?aC8zZjEvOHp1KzFGbHJFODJtRlF3S1VQQmI0aFl1ZXFpMHdId1dRU2ExT2c1?=
 =?utf-8?B?WktYdnlyUHRROFZjV3lwR0hNVUpLeE1aY3YxV2JOODliaXRiQnBxd0xrY1pF?=
 =?utf-8?B?U0M4b1ZCQ3V0Snkrc05tb1VXcUt1MlkyQ0IrMW5ObkUrV1V0SG5TNmhzdmI4?=
 =?utf-8?B?a05XckoyalFEMElKQS9LZURpQzI5VVlTVWRlNm1mZldhWS80MGFia3lhRUVu?=
 =?utf-8?B?S3FYdThQMFZnVUM1VjlMU3FydzQwbVlyQWVwWmhjZHdaNzB2TmowZHBFU3B1?=
 =?utf-8?B?TjNwT21OY0Vwak1hYVhhT1pwbmpEcHFlQSt2Z3VQTVFYWDVXdnJ4Z09IbC93?=
 =?utf-8?B?M1hKL3YwTlhxbEtwREttK1BNYkdvYTFyZUxyam5zVVYzOG9sRnhEL25jSWRJ?=
 =?utf-8?Q?VafNnuNZ2pdgfU3KOccn2KMRx?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 360c8698-202a-48a4-2a62-08dd83273fc0
X-MS-Exchange-CrossTenant-AuthSource: CH2PR12MB4262.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 11:57:55.7749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3XgY0exwrg+FnHia8qYIgbCoDe9PNJ7fYV/MqPmA1+tV27arSIgKN7x1yZ/pgfIAM4ycAB99SwtgLEJBzz5hoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPF934D73F2C
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All,
 Thank you for reviewing my patch and providing feedback.
 On 4/24/2025 8:49 AM, Matthew Wilcox wrote: > On Wed, Apr 23,
 2025 at 09:25:05AM
 +0200, David Hildenbrand wrote: >> On 23.04.25 09:22, David Hildenbrand wrote:
 >>> On 23.04.25 02:36, Matthew Wilcox wr [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.43 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.244.43 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.244.43 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.244.43 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
 -0.8 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u7vSR-0006Rj-Pn
Subject: Re: [Jfs-discussion] [PATCH V4 1/2] mm: add
 folio_migration_expected_refs() as inline function
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
From: Shivank Garg via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Shivank Garg <shivankg@amd.com>
Cc: jane.chu@oracle.com, shaggy@kernel.org, wangkefeng.wang@huawei.com,
 syzbot+8bb6fd945af4e0ad9299@syzkaller.appspotmail.com, apopple@nvidia.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, donettom@linux.ibm.com, ziy@nvidia.com,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi All,

Thank you for reviewing my patch and providing feedback.

On 4/24/2025 8:49 AM, Matthew Wilcox wrote:
> On Wed, Apr 23, 2025 at 09:25:05AM +0200, David Hildenbrand wrote:
>> On 23.04.25 09:22, David Hildenbrand wrote:
>>> On 23.04.25 02:36, Matthew Wilcox wrote:
>>>> On Tue, Apr 22, 2025 at 04:41:11PM -0700, Andrew Morton wrote:
>>>>>> +/**
>>>>>> + * folio_migrate_expected_refs - Count expected references for an unmapped folio.
>>>>>
>>>>> "folio_migration_expected_refs"

Thank you for catching this, I'll fix it.

I wasn't previously aware of using make W=1 to build kernel-docs and
check for warnings - this is very useful information for me.

I'll add to changelog to better explain why this is needed for JFS.

>>>>
>>>> What I do wonder is whether we want to have such a specialised
>>>> function existing.  We have can_split_folio() in huge_memory.c
>>>> which is somewhat more comprehensive and doesn't require the folio to be
>>>> unmapped first.
>>>
>>> I was debating with myself whether we should do the usual "refs from
>>> ->private, refs from page table mappings" .. dance, and look up the
>>> mapping from the folio instead of passing it in.
>>>
>>> I concluded that for this (migration) purpose the function is good
>>> enough as it is: if abused in wrong context (e.g., still ->private,
>>> still page table mappings), it would not fake that there are no
>>> unexpected references.
>>
>> Sorry, I forgot that we still care about the reference from ->private here.
>> We expect the folio to be unmapped.
> 
> Right, so just adding in folio_mapcount() will be a no-op for migration,
> but enable its reuse by can_split_folio().  Maybe.  Anyway, the way I
> explain page refocunts to people (and I need to put this in a document
> somewhere):
> 
> There are three types of contribution to the refcount:
> 
>  - Expected.  These are deducible from the folio itself, and they're all
>    findable.  You need to figure out what the expected number of
>    references are to a folio if you're going to try to freeze it.
>    These can be references from the mapcount, the page cache, the swap
>    cache, the private data, your call chain.
>  - Temporary.  Someone else has found the folio somehow; perhaps through
>    the page cache, or by calling GUP or something.  They mean you can't
>    freeze the folio because you don't know who has the reference or how
>    long they might hold it for.
>  - Spurious.  This is like a temporary reference, but worse because if
>    you read the code, there should be no way for there to be any temporary
>    references to the folio.  Someone's found a stale pointer to this
>    folio and has bumped the reference count while they check that the
>    folio they have is the one they expected to find.  They're going
>    to find out that the pointer they followed is stale and put their
>    refcount soon, but in the meantime you still can't freeze the folio.
> 
> So I don't love the idea of having a function with the word "expected"
> in the name that returns a value which doesn't take into account all
> the potential contributors to the expected value.  And sure we can keep
> adding qualifiers to the function name to indicate how it is to be used,
> but at some point I think we should say "It's OK for this to be a little
> less efficient so we can understand what it means".

Thank you, Willy, for the detailed explanation about page reference counting.
This has helped me understand the concept much better.

Based on your explanation and the discussion, I'm summarizing the 2 approaches:

1. Rename folio_migration_expected_refs to folio_migration_expected_base_refs, to
to clarify it does not account for other potential contributors.
or folio_unmapped_base_refs?
2. Accounting all possible contributors to expected refs:
folio_expected_refs(mapping, folio)
{	
	int refs = 1;

	if (mapping) {
		if (folio_test_anon(folio))
			refs += folio_test_swapcache(folio) ?
				folio_nr_pages(folio) : 0;
		else
			refs += folio_nr_pages(folio);

		if (folio_test_private(folio))
			refs++;
	}
	refs += folio_mapcount(folio); // takes mapped folio into account and evaluate as no-op for unmapped folios during migration
	return refs;
}

Please let me know if this approach is acceptable or if you have
other suggestions for improvement.

Best Regards,
Shivank



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
