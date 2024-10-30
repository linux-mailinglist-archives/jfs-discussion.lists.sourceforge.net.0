Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCF49B65DF
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Oct 2024 15:31:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t69iv-0006rm-V0;
	Wed, 30 Oct 2024 14:31:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1t69il-0006rR-7O
 for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Oct 2024 14:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NSTIrla38U4+6tb3JfgqVKJng1MMcOE3IYnYWRdZbPQ=; b=RJ8muxkdsRSfMLPioQcRxadntQ
 sUxJtyg/OT/wagAQJlZMYxqO71BY//eu3aSLdL2HaTbpjbfcZoBfiqC/OxlBdLNrTEPKAZYKi6QkS
 QMhfNGtp9y99dHxVJ3pLAc5mqZ4EmdKRaSa3gLrqxC61OOi+nG68k9mj2Gpw6kZpOZ3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NSTIrla38U4+6tb3JfgqVKJng1MMcOE3IYnYWRdZbPQ=; b=Xo8GzXY+09pyW66eFVkVvk8BnO
 Uy5VOK2KZaLcOTlLixD8YTV29sC0xPlnewUjmEF3VoXxxLah4MvieTfj7E5HVZBKUvreBX9fOhaow
 0pb2b3mb9a3lgtCT9Ebr4UI+rHWMnHyTGMymKc6oHboJYbBhV6QypOQUyHlqwKSmALE0=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t69ij-0001kI-BY for jfs-discussion@lists.sourceforge.net;
 Wed, 30 Oct 2024 14:30:50 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49UEF60e003930;
 Wed, 30 Oct 2024 14:30:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=NSTIrla38U4+6tb3JfgqVKJng1MMcOE3IYnYWRdZbPQ=; b=
 ev8tVOwkWWzbruhyD21U7p4MunS8w4CQzhRF2PL5ShJ3zhF7hpSo+SE5bLTpaDuY
 ob+hcIes8DYudLoDTh6/onSUN69BbL6azZ0Zmh//P8jFY+no1QiHlGRp2O0qjFT/
 xvjiV3NRHaJTBpTnUkiMa1xEsBjvFWkPPlezEcgcX0JT2xJCHCYr4jvweQdCZLzj
 Nf6/6u3TnAhVtuX8qWMlIpS/nVQDIpHwB/AA1cDXafuyynSrlTI2Fg5vUDwWLbwW
 leMEUxry53qa3K1+V0QMIVNo4AXc+/poK0+UVX+WpZtuZ3dbMVrxV6mQci5s5WbR
 aVcjrXfr0I2Pk+Px2LMnhA==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 42grgwg2j2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2024 14:30:35 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 49UEEIdd011835; Wed, 30 Oct 2024 14:30:34 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 42hnae3rup-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 30 Oct 2024 14:30:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eKguAmsAWsAI+m7RFWStFQcOHzy9xWBFh5IgbPOms223nmHjw4xgBmgmYUpELCt6dxY50MFEH2QJO1CLTI6WN2+D1sZCGHskHqrzncMlNJvXKA32dFgCv0yHBdk5s36V+w8ao0P8mbwA/JYSs+6mcelmrOlPbkYR7fKNMlhDAv8br5l2IkZ1oYnLOUAP3jsEBfRkr+6l5MbKkhnt4oTS2jOzFKjDxGJ54vWygrODo6BO5Z/TjdKhULkhqe15KOX6Y7ZH53yI9wTWEfcmRzYvIQJgKaRlDDJVTNwMZfT3DX2eGvmKaCsYYR3ZEcN4syAeUw1p1gud2CDgMQUs5ykjfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NSTIrla38U4+6tb3JfgqVKJng1MMcOE3IYnYWRdZbPQ=;
 b=zMwgRuqXtLt1C4dRDg+g8H0oL9uIllsmuRHWIvqnw7GzsD+h3Yaw3g5B44G3rV9iT0RnasqLyxyHvI9UJHuq1kN9qjh2NNcQsKFR9ilx+hJtPkKIbzX95YyY51WdFTJrsNO+1RooUyOhsmfyGnRCuTIjxSDrw9YVxujyq41R4ck4LAINIEFyYxc8r+4YFQpPaoouDPT7XSlwbwleXP1mSiRe2wChwmy1y82TowNOEfgaTzA3LjMtzyzaRner4DTIEZ5IT7th8kFVHoOgeVjk9PTiFHtqEERQ67PMwE9wLxx5obBCb6U2WET1QVHi/e1vcURA/w9JrthGegQ4vzVEgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NSTIrla38U4+6tb3JfgqVKJng1MMcOE3IYnYWRdZbPQ=;
 b=CrRbt61/jfY9t310aD2Mv+2ic8d3cu4Cns4dh68im+hXdU9HBjT4e6pmU6vj63ZVgvvq1nBBUEQt5sDmkAAaGYL41Ofw9FxdiOXjccHJbZYSlMbQZG8e86X9TmXoGjD6oZHxmKLZxUwwtISDdiDPbV+ZrL5hYxU0p0Gp7WQ4+Lg=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SA1PR10MB6392.namprd10.prod.outlook.com (2603:10b6:806:258::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 14:30:30 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8114.015; Wed, 30 Oct 2024
 14:30:30 +0000
Message-ID: <33eea214-56ee-47da-89a7-b4375a5e860c@oracle.com>
Date: Wed, 30 Oct 2024 09:30:28 -0500
User-Agent: Mozilla Thunderbird
To: Qianqiang Liu <qianqiang.liu@163.com>
References: <Zws-so-6TnY_FUFH@fedora>
 <670b513e.050a0220.3e960.0033.GAE@google.com> <ZwtjNd_koDuU_MT_@fedora>
Content-Language: en-US
In-Reply-To: <ZwtjNd_koDuU_MT_@fedora>
X-ClientProxiedBy: CH0PR03CA0242.namprd03.prod.outlook.com
 (2603:10b6:610:e5::7) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SA1PR10MB6392:EE_
X-MS-Office365-Filtering-Correlation-Id: d6b0d7ee-dc63-42f8-8aef-08dcf8ef6800
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THVTUzdMRFNNN0JMVkRwS1pNNzA0OXA5SWt3TnBnN3BRZG4xSzhjZ1FDMGlG?=
 =?utf-8?B?L3Awa2NaNTlUdzl5ZGhBRmJHVmJIMk14NG5CK0pLczBqMVRleURaRjJVZjRv?=
 =?utf-8?B?RGxCRC9FM0Z1OWEwQUo4RE45cVk4NDJ3TlhSZG14U25raWZ2Qk56NTRsbUdG?=
 =?utf-8?B?WUtoYzE1bEJnUWRSdTZvRnRMOEtQeDV4UXdnVWw2akdNaGhIbVJIai8yUUw1?=
 =?utf-8?B?eXpNTEJCbllrQ3hZU1B6QldvcGlVYkw2NTQzbDlVYjZNQzF5T0F0K2xxS1gr?=
 =?utf-8?B?QUVkZjNhZ1pGRXVkbFN2cVB3cXFzeTR4TE5BUWZZWEM3ZXZEajIvWFBYeGVC?=
 =?utf-8?B?dmREMHRzK3FzYkE4cG5MRWdwV2dLK1lwU29WcVdia3d5UmhhUjAxL3Njai96?=
 =?utf-8?B?OHdyekV2ZG4yZ1Z6OFRMaFMxRkN5K2RTeUpkNlRlZ2RtQnR6NE1CK2dlSjk0?=
 =?utf-8?B?TVRjUzdaY3cwTlNyN3hnY2FUZ1dvL0dPaHRkenlGQ2didm9lbUVmWVpjNFFL?=
 =?utf-8?B?UnFEcnJYeTZwMUJEblljVXkrT1JoclhLZDN3enB6cFVZRndqN3d3SHN1a2VR?=
 =?utf-8?B?QXdUajRHQXFLeGZRSXJGT0tNbWZDTm1SOFJ2dEs1T3JXSUVJZ2ZvSTNPTEJw?=
 =?utf-8?B?SFh5S1loaFFEWnlKU3hnaDI0L0tIem5RdUFGMjEvNUJIWW5tcHVVUUtLR01O?=
 =?utf-8?B?Z2tBWTRXWVNnajQraUVmbGVlWjRWam1sMjF5L2ozVzBYbHUzOTlQdnZCaU9k?=
 =?utf-8?B?SUlhSjc1TkVFSUg5eVpVMml3b3dRSFRHQkZac3NkVVJWVlI4alpjejBmeTho?=
 =?utf-8?B?OEpHNytSenNxM05HT1UybDBvTDZEYWwvY21mMUNkeTNJeEpvajFHN1BvSHZl?=
 =?utf-8?B?UFA1ZnNUbFpXbmZxQzlrVUZITWpiMGZmM2lyRktjbEVaU2gwT0FBKzFaeGJP?=
 =?utf-8?B?NytVQmlPR2V5ZlJ5eFVSV3VnWkxrcmtuRUhwTjY0L2lkQVNLd0liWU5wSkty?=
 =?utf-8?B?WmcrTmNTOC9KRGoyWWlycXZVQzZWcjdmc3dSU2xsVlN0RjRRQktWV3VPKzZl?=
 =?utf-8?B?OFY3VzByWW0yTTNLby9heDM0dTNYWWhsRTlyT1dwT0dlSkROQ0ZabmZnaDlv?=
 =?utf-8?B?UENKelB4OC93RkU1dG4rbkk3L1V0V1lUY05YZEtrSW9TZTNsSFFpUHpYM3dv?=
 =?utf-8?B?Vm8wUWJUVENQQWpKbkJhczZVem0yQjgySUN6VklBTVlsMnJnMWlsdEVKUWdC?=
 =?utf-8?B?VlcrbnpWZFB2R2VvRHFMd2wrUDRKcktzVllLU093QmVNclU3WE9ObUU0anQr?=
 =?utf-8?B?R0JEQWc2dlAzWU5sS0VDdzU2WHg0YTNSRyt3QnYyWFJDOVFpb25pSjFaMVZm?=
 =?utf-8?B?UTZXTlBKbEJ4Z1VzUWJpamlyUHlnZGZTZ3Z5RURTMHlGRmEvY0QydXVPWmFG?=
 =?utf-8?B?RENhUlZ1NXFkbFJXendWbm0vNGJBYi92UFhEa1ZXU3pkT3o5eGYrUmNSSnpK?=
 =?utf-8?B?N202RXo1bW9qZ1NZNXYwa2tLLzNCN3lrSXhSVUdNZjNFOEY5ay9naUxGSXpw?=
 =?utf-8?B?aHlnTHZOa0E2ZW1CSW9xb3YwOGJIK0JZZHYrWVZiSGJycXNDdlhNR25Rcjlx?=
 =?utf-8?B?Y29hUXUrUXYzTlIzUEl5cGtRNFBIZTR4TmFLamovWGJCSjBJdkhBQm1CcC9G?=
 =?utf-8?Q?V6ZK7q6PSTAfd1STD4V4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3dITjZEV29XdU90b1phMm5ybVQzUTUzL3FjdmNYcHdwQjRLRzR5enJ2T3ZT?=
 =?utf-8?B?L0hWZkNyZXR3UnkwQkt6TjJ3MnZDdGsrOWRpOFY1SUNIMm1VOHZFVm02enlq?=
 =?utf-8?B?dlZGZEJTVW5GWFJuN1FxdFFDREVrYUEvVWxoM01mRmFJNG5LU2lBL29WSytS?=
 =?utf-8?B?QXZ6dEtlUzRPNFYrNHVIRHVRb2NqOTR2a3NKTFMzdWNIbG5ab0prRlhlMFp4?=
 =?utf-8?B?eWxsOHMrNUVhY3VtTk5KN1lSWDBlTFZteHNpdmZYUmZqNzFDNlhIMzlLdFBy?=
 =?utf-8?B?dTcwOGw5OXFsTzJPM0JuV3FBTjRFNnd5NHJ2RENNQ1RXRnJVY0ZEd29lbTNk?=
 =?utf-8?B?QmZ1b3dYNjcrbkdGWS9QTzRmaUJ4OFRzWWtVazRyRGdxOENIbzZBUzVURmhV?=
 =?utf-8?B?SmJaK2FUbGxTWUFWY05PVXlUZXVFZ3lqcTJqQjlDUlp1MWJib3RpbUFaZ0lO?=
 =?utf-8?B?cXozUEE1OTRMVDJZSmgvYWg1KzVNQ3o4UjRFMUtlY0JpT1hUclAvUEU4ejIv?=
 =?utf-8?B?TmZNVGJmdmtnQnV3dUpuRmpna0VxYWpBbk1KQkpBYkxkV2dXemM3SWpMRHRs?=
 =?utf-8?B?VnBJTTBqajhrLytzWUtLN1RUbFdiM2Y5VVErMmZ4b09SWFlWZENrdkdjMUNm?=
 =?utf-8?B?NlBJTDdmTm11T1ZLOFd3SDBjbkd4MlBvTVQxbmorR1gyRytXcjhUZVc0K3A5?=
 =?utf-8?B?QUkrNkxBdEhEU3ZRSkkvUndmaFpuazJjc1FpalFiUCticU5xSTZjN2NqaVgv?=
 =?utf-8?B?N0xDeksyTzU4ZTFhQ2VZN1c2QW43SDBWeU5IY0FudmtxQ3Nhc1hyV1dEZjhL?=
 =?utf-8?B?VTNIZ3l3M3VxUmQzS1ZwcGUwNTIvdUJwdmYyazU4QTdXQi9tTVp5c0ZLOXRU?=
 =?utf-8?B?RE4wR3FYVHBiUlZ5MGpXYVArTFA5RVhqOEVjVXBGT1RQVHgySW1MUFFZZ2JP?=
 =?utf-8?B?SmcvRXV0ZlNzZzJmVWhqdjI2V09aZzVsZkExS1c0WWEvRjFjWHF6Y01lTnhB?=
 =?utf-8?B?QUZGTHhYRklDMjQwS3FUcSt2VGRnRDB5bG9XaDkrZEw5bzNPWHRla0RMUXNm?=
 =?utf-8?B?UHJseEVhUzN2ZzFZNkpBSmU2YnhqQnhjVHowc0RnU01ZQmhIOUVJUDQ2SVBy?=
 =?utf-8?B?QWVUdmtiOGpPZjhYSTVqMDAwNUtQNHk3K0pPRHRmTWlnY0hNTWFtWmxwY0M4?=
 =?utf-8?B?OHlsNWx4enlYczNYWDhlaUZCclI3MHBWRCtmMTZEQzJBeXE3bjI5c3pLVVo1?=
 =?utf-8?B?OHl5OWhkdm42L1FoSE4rUWFNTGFVVW4yZlZyZG9uc21sdmRxeHNIOVdONzh0?=
 =?utf-8?B?RnlrRStaWnVBMDNVcUhZRTU1akVVWlZiSTdzYnlDREIyTGx2Y1ltYVBWdkxR?=
 =?utf-8?B?K09IQW45TUFOajkzUzdSa1RpaEVRYUVLRFphK3ZEOExpS1dDODlPblZWN0Jp?=
 =?utf-8?B?WjN2cTNBd0VRV3h6U3NzelFFS3ZVLzdCVmltNVdPYlB5U2lrTUJ2NHlwb2ty?=
 =?utf-8?B?UWl4RlpKRzNvek5RbE5aL0VVREtwTS9odDR4SEErK0dSWU1mWEpKcUVLOElJ?=
 =?utf-8?B?cVBJTVFEY0pGY05Dek9yblY5U204QzZUVUJVTEN4Qy81clJFQm12dFpabzkx?=
 =?utf-8?B?d2hCMzM5cHRHZVA4UlIzTE9aMHZ4WlMyeDJzQUF1WEE0a1hSeDJ3QU9zR0xK?=
 =?utf-8?B?czdUT2FHenB4aXNXNmQwNnNQZGhFMU9DcnBBYnVjc2k5b0VLbDJ5b2VEWExL?=
 =?utf-8?B?RFQ5dTZvVlliekFBb2Evd3l3NHduZWkvMFZpc1F6dkxFeWt6Z3BwTlNiaUNo?=
 =?utf-8?B?Y1ppSmVNTzZGVXlWcGlVVVhHWHlQMk92QXVWS3pEZS8wS1h6L0dkSGdkNm9z?=
 =?utf-8?B?bTA5NU52NHFCQnFBdzV1VDljeTBCeEFvWEJscXpja3VvSTFuZ3hlSDlWa3Vo?=
 =?utf-8?B?TUJGUktFZWJiQ01HdnVRNXVja0dXbGhZL0w1SS9RVXlraVh0V2k2bjhRRlhi?=
 =?utf-8?B?c0wva0d6bTZ1VGF5ZTUzb2JKYnZtdU9JQ08zR28xVUFjbEgwZEw1VWZHVTBM?=
 =?utf-8?B?NXEzRG1oZWFBVHd1SnVodEx6VjBUZ3hRSlVNOWtyeUNsVTBuUDJOZitEbGtE?=
 =?utf-8?B?OThnQTR3LzFUVzA2UXpJZjFkM3RYWitUVG9wL0tkaXlwOHp4MGNkWHlpcHBI?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: fLdSWnRNrzpU19oB3pL7C8x2hP6bt0mP1+DbDfPg+0OHQu671/A3NjMZla2YKCBP/jOi5t8FcjT5Kpd0Dy3HG8L0/G3DiivII71fO9HaerftjJYeOMkVTga8phEjO0bJZE+WkE/ZcAXjrtDvftRzjPXACDmChcgt5l20OEQw0RmzrySiB0EOP2yJ9IKVaU+ZQSEP7g1nxd6z1zwK78MgW5WZczIYl/3axv87pzXfgRgoZY79QRJM0JrK6P9xNcDW9XjiPAxmtJNBzR6A4mDn3nnewN2mdY+YVb1LBoKlP0rai5ZJLQwgbRbtMsNW81VPCfXq82numjWaY2V0DIH7xkgFvnL+5BVwBbnTXRH2HavvISqC+JUgD43/46Pay6mnJL9kf43C/rI6fy0omS1uhavRwygKpYIvrGHJNPPzn3I/aTJlj06BtTrPPSBdpTWE+89JFMgCTG5ES/igT9U/YTKIE8nP697MC0qJBv2pS9HzU8GEFZ26rFSErYg19z5bGcOud/W1HpmhTNH+E/Not4AueRtIJw3YRmYAvU9bodsmUWGCkETY/DW6vI5BTxe8yEgZGyfPVkxs1NJBdTcfwh2sxnrKixXSxst2l2ADd/U=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b0d7ee-dc63-42f8-8aef-08dcf8ef6800
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 14:30:30.6813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nfzq6QRRFIrsVVR+TgKYlnxzCMaHqOXF7dvu2YpSBd1YGno0Mfex96MLQRa8auL19lGpF/po6p+mA3Rm6zcWa/oEUmch8BGmgR+LU16CWaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB6392
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-30_12,2024-10-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0 spamscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2409260000
 definitions=main-2410300114
X-Proofpoint-ORIG-GUID: DebFPxoIWXZdfTEvrlWDZEi33oXCcJ1H
X-Proofpoint-GUID: DebFPxoIWXZdfTEvrlWDZEi33oXCcJ1H
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/13/24 1:05AM,
 Qianqiang Liu wrote: > The jfsCommit kernel
 thread uses the sbi->commit_state flag,
 > and sbi may be freed in jfs_put_super()
 by another thread. > > To prevent this, move commit_st [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t69ij-0001kI-BY
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix use-after-free read issue in
 jfs_lazycommit
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
Cc: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/13/24 1:05AM, Qianqiang Liu wrote:
> The jfsCommit kernel thread uses the sbi->commit_state flag,
> and sbi may be freed in jfs_put_super() by another thread.
> 
> To prevent this, move commit_state to struct tblock,
> eliminating the need to access the sbi variable.

I need to give this one some more thought. The unmount isn't supposed to 
complete before all I/O has completed, but it's been quite I while since 
I went over the mechanisms to safeguard that. I'll have to look at this 
problem more closely.

Shaggy

> 
> Reported-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=885a4f3281b8d99c48d8
> Tested-by: syzbot+885a4f3281b8d99c48d8@syzkaller.appspotmail.com
> Signed-off-by: Qianqiang Liu <qianqiang.liu@163.com>
> ---
>   fs/jfs/jfs_incore.h |  8 --------
>   fs/jfs/jfs_txnmgr.c | 10 ++++------
>   fs/jfs/jfs_txnmgr.h |  8 ++++++++
>   3 files changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/fs/jfs/jfs_incore.h b/fs/jfs/jfs_incore.h
> index 10934f9a11be..7b75c801b239 100644
> --- a/fs/jfs/jfs_incore.h
> +++ b/fs/jfs/jfs_incore.h
> @@ -177,11 +177,6 @@ struct jfs_sb_info {
>   	pxd_t		ait2;		/* pxd describing AIT copy	*/
>   	uuid_t		uuid;		/* 128-bit uuid for volume	*/
>   	uuid_t		loguuid;	/* 128-bit uuid for log	*/
> -	/*
> -	 * commit_state is used for synchronization of the jfs_commit
> -	 * threads.  It is protected by LAZY_LOCK().
> -	 */
> -	int		commit_state;	/* commit state */
>   	/* Formerly in ipimap */
>   	uint		gengen;		/* inode generation generator*/
>   	uint		inostamp;	/* shows inode belongs to fileset*/
> @@ -199,9 +194,6 @@ struct jfs_sb_info {
>   	uint		minblks_trim;	/* minimum blocks, for online trim */
>   };
>   
> -/* jfs_sb_info commit_state */
> -#define IN_LAZYCOMMIT 1
> -
>   static inline struct jfs_inode_info *JFS_IP(struct inode *inode)
>   {
>   	return container_of(inode, struct jfs_inode_info, vfs_inode);
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index be17e3c43582..a4817229d573 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -2700,7 +2700,6 @@ int jfs_lazycommit(void *arg)
>   	int WorkDone;
>   	struct tblock *tblk;
>   	unsigned long flags;
> -	struct jfs_sb_info *sbi;
>   
>   	set_freezable();
>   	do {
> @@ -2711,17 +2710,16 @@ int jfs_lazycommit(void *arg)
>   			list_for_each_entry(tblk, &TxAnchor.unlock_queue,
>   					    cqueue) {
>   
> -				sbi = JFS_SBI(tblk->sb);
>   				/*
>   				 * For each volume, the transactions must be
>   				 * handled in order.  If another commit thread
>   				 * is handling a tblk for this superblock,
>   				 * skip it
>   				 */
> -				if (sbi->commit_state & IN_LAZYCOMMIT)
> +				if (tblk->commit_state & IN_LAZYCOMMIT)
>   					continue;
>   
> -				sbi->commit_state |= IN_LAZYCOMMIT;
> +				tblk->commit_state |= IN_LAZYCOMMIT;
>   				WorkDone = 1;
>   
>   				/*
> @@ -2733,7 +2731,7 @@ int jfs_lazycommit(void *arg)
>   				txLazyCommit(tblk);
>   				LAZY_LOCK(flags);
>   
> -				sbi->commit_state &= ~IN_LAZYCOMMIT;
> +				tblk->commit_state &= ~IN_LAZYCOMMIT;
>   				/*
>   				 * Don't continue in the for loop.  (We can't
>   				 * anyway, it's unsafe!)  We want to go back to
> @@ -2781,7 +2779,7 @@ void txLazyUnlock(struct tblock * tblk)
>   	 * Don't wake up a commit thread if there is already one servicing
>   	 * this superblock, or if the last one we woke up hasn't started yet.
>   	 */
> -	if (!(JFS_SBI(tblk->sb)->commit_state & IN_LAZYCOMMIT) &&
> +	if (!(tblk->commit_state & IN_LAZYCOMMIT) &&
>   	    !jfs_commit_thread_waking) {
>   		jfs_commit_thread_waking = 1;
>   		wake_up(&jfs_commit_thread_wait);
> diff --git a/fs/jfs/jfs_txnmgr.h b/fs/jfs/jfs_txnmgr.h
> index ba71eb5ced56..3a0ee53f17cb 100644
> --- a/fs/jfs/jfs_txnmgr.h
> +++ b/fs/jfs/jfs_txnmgr.h
> @@ -32,6 +32,11 @@ struct tblock {
>   
>   	/* lock management */
>   	struct super_block *sb;	/* super block */
> +	/*
> +	 * commit_state is used for synchronization of the jfs_commit
> +	 * threads.  It is protected by LAZY_LOCK().
> +	 */
> +	int commit_state;	/* commit state */
>   	lid_t next;		/* index of first tlock of tid */
>   	lid_t last;		/* index of last tlock of tid */
>   	wait_queue_head_t waitor;	/* tids waiting on this tid */
> @@ -56,6 +61,9 @@ struct tblock {
>   	u32 ino;		/* inode number being created */
>   };
>   
> +/* tblock commit_state */
> +#define IN_LAZYCOMMIT 1
> +
>   extern struct tblock *TxBlock;	/* transaction block table */
>   
>   /* commit flags: tblk->xflag */


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
