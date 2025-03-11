Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A39E0A5CAB7
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Mar 2025 17:23:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ts2NW-0003G0-5p;
	Tue, 11 Mar 2025 16:22:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1ts2NT-0003Fq-7l
 for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 16:22:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CDUJ7arqQTgVTpjxf8L+rm20uKdcpg/NwVNLsjFXbVA=; b=a6Cubd8zUGOdUtsp57Vxjq9mB1
 Au/FFV9OtZMuCJq6OSc04/meVpqHa142ZPoLhZd8ISwB043Uqg/XLlwsG1pLT78K0tdOLUIg50pGo
 Vh17i/ZLJOrs5wJnKA3xTMcojkL5IkMPBM70Pj10EGX2PNkV7RaeuJWjmtrsbJYHuMJM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CDUJ7arqQTgVTpjxf8L+rm20uKdcpg/NwVNLsjFXbVA=; b=f01A14yn6XRoLXwO2qqDORbvkH
 fRBbkNZ/1UxfI68axn/fk6bL7zUtj5gGTRjT1++IscwICAIrgSqyJSdcKAQ4O9kCoq3THC10cLOX/
 Kdlvs7LpZ5UC6qPwLucZXWj5MXUVQupzp0JJ2BqqQKLhZcqZSvzS0wJZMGjTD18lowGw=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ts2NH-0006CH-Qa for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 16:22:46 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BDMtwI009562;
 Tue, 11 Mar 2025 16:21:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=CDUJ7arqQTgVTpjxf8L+rm20uKdcpg/NwVNLsjFXbVA=; b=
 JZfl8FQi6alfX0s7i3X/FqZLsZ9mAcbcI3EyOcnPKpsYejoLRsUpgxnScystK0Ok
 Wa/+6NNBXB8bJo7bqjLfIIgyZRbSN5MVCzN4aaq5QAxUQdanjguSpCJMbWvNXFiz
 fYr+QmvZAAsl2ZlDVv86N0TtmNgWtI02AZ32+9D5kWI/p26bAQExvD4DSYr6a9Cw
 bMfltHhoJ3WRgr7+rdKIJt3Cml/y3yVjMa0GaFsin7knraaK/ldl7gKEnE3fmLzg
 XHqipIjhhHNBEjlFHs0O1R7tHZjW+CKXlWYhXLmFfIutw1QzM0n0/2LJBBQuWjT0
 cqDQwDISXWh1zZ46DJpGqw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 458dgt579e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 16:21:12 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52BFfrX2022480; Tue, 11 Mar 2025 16:21:11 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2048.outbound.protection.outlook.com [104.47.70.48])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 458wmprr5p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 16:21:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N0oiSSnk6wrA77qHH/3AlcM1eWOAUjFWnfM3WWFvGEKmNLss2OZif4LxU8HNHC+VUNV9rn4+sJzgeqGx3r2TDi30gffLZtsh0xp07A1AvbdGsehjv0figuObFGykHKVvP7lUOnlICxZF3JtHF8ksdxuaLZNFL5hW6adZvzJyjxIJykMBLOZCcNzsNMM6Q4/bMJ0TIIhMXYf+3xDMvW7pWZWtDuGLUpmkMCJcxbmgSQ4BXL46UzX5HEaJIBdkemhHphbPnZ7XRp0aKfBUmNnANhBED85ckHPSv4TbABygxzmiyqRiX2LP1TDsAS2PpxVaBSdQncZ90/YHH28cbUEwcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CDUJ7arqQTgVTpjxf8L+rm20uKdcpg/NwVNLsjFXbVA=;
 b=kWqFkFAkz1bapIUksWzVKXiAt3T6qDHxfjE5fwHrvYQOiC5S6MMsUWpzmpHts9Sgv+BOJlea44AEC6C3wVpjE+pEi11YRtPnm3YGVVPyjuJFFLPJjItqLjwNkblCGCwcKAh67n6aAw4ZSk2iWTAqubgQm3rm2hmphw29kf0vuPCntD4DRD7vUAB3P/xlTUUX+IhOhMp+wKTzaYPr+nIetlM1Mp8iRZu5L6GuNtJyD4C1mtWRBNETGRDPIe6Eorc2DHcA+mxbp9VsAl/QVrL5axeBolbQ/2+plMfXGtPkC3Wir7jzHaDA5Q2ZTIL0SaOFt8ifs29VJnk41Y+KQwNY5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CDUJ7arqQTgVTpjxf8L+rm20uKdcpg/NwVNLsjFXbVA=;
 b=GvvAcZfDpYeL15ENSG9Zvpt2iXe4J6suZWm+wKnLjbO/aJWvEW1Quntkfy8Tn3ugLiZrKACs1XW9Go01w/OVBUxIaIKxL8zfGpWBJEetO4aXs1RX4vPN7kiprJG1qqhxV5MpzB7hJDJPzD/dwY5mpeEq4GAP3sm3eY1EYxvABa0=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ2PR10MB7583.namprd10.prod.outlook.com (2603:10b6:a03:537::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 16:21:09 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 16:21:09 +0000
Message-ID: <fe074446-aeca-4766-ae3a-eb34ffab867e@oracle.com>
Date: Tue, 11 Mar 2025 11:21:07 -0500
User-Agent: Mozilla Thunderbird
To: Fedor Pchelkin <pchelkin@ispras.ru>, Rand Deeb <rand.sec96@gmail.com>
References: <20250225114110.1775745-1-rand.sec96@gmail.com>
 <yogb3soaqqg5vnon6ogryhdmmatrvrc2xwlh2exwlhyf6gnfw7@7tybsy2s52qb>
Content-Language: en-US
In-Reply-To: <yogb3soaqqg5vnon6ogryhdmmatrvrc2xwlh2exwlhyf6gnfw7@7tybsy2s52qb>
X-ClientProxiedBy: CH0PR03CA0414.namprd03.prod.outlook.com
 (2603:10b6:610:11b::32) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ2PR10MB7583:EE_
X-MS-Office365-Filtering-Correlation-Id: ffeea341-0f9a-4f31-af64-08dd60b8bb50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHZiM1ZQYXpIK0ZsZ3JCRkVoNzEzS0VTUjZtWVZsT1YvTDlmZ1NyOWdLdWdr?=
 =?utf-8?B?ZDFzeW5PSTRLNTFudnFsUERzT1U0MWk5RFlMR1JFUEx2cVJUTkI1TXJUeDla?=
 =?utf-8?B?OXN5RVMzTkZjVkV0VlROTnJ3cWl1TWRLM2ZnUVNGamZXdm5TdWVxYkpCSmgx?=
 =?utf-8?B?dEJmVHAxNEZGWGl2eDNJZ1pIYzkxdGxjblBDM3IrcEhJbVVuN3k0NXBodDMx?=
 =?utf-8?B?aXVUTDM0anRnSXFlTFpSeW4yazg0bXI0Z0tHOW9kRVpUdzRqTWVGdUcxY2ZD?=
 =?utf-8?B?NFpFSHJMWGJMZXZtV3prMkhhUStZNlRPc29wQ2YzTitTOUdXYmJaR3l5Tml4?=
 =?utf-8?B?WmVVSEZ4YkV3dnZYbTVWd0RkK01VQ3Q1d09kMnhYVE5zWlBlTUlPUU9zb1hs?=
 =?utf-8?B?QVhsZk5HbFNIK0hKSjlJTU9nYXBibmxQa0VPYzJhRVlhVGtMU0pySHY1bUJo?=
 =?utf-8?B?NDhEMmtDMlZuUS9XVWFiL2tzd3RKMTVIOTVyaDdwelVjSGJnQzNDODVBL3gz?=
 =?utf-8?B?WWJmdEVHbTZjdW9QY0I0S1JqMDFlYXRZQm0wSnNSSjVjMit3VXhDSlJEQzd6?=
 =?utf-8?B?dEJrRDBLTmxzdUwveFZHREViQkxMWFN5SmV1blJHVVlWVEJPaEs1M1hDTXd3?=
 =?utf-8?B?SWpjRTJtWUl6OVppbjA3Mk41YS9xTVA1bWVOdGEvcCtMN3dnMjR3T0NjNXJS?=
 =?utf-8?B?TVVBaG8vNDNQYkp0bU5OUnB2VUMyN2RZcWhUbmxoVnE0K3RSUFZhblpUMUU1?=
 =?utf-8?B?SDFqM1hGQWFLV3QyN1UyUDdnZE1oS1VhaGZEbUFETUl6K1hFUlQ0VWlxcGFV?=
 =?utf-8?B?SXhFVUVaRTNGbFNoYUNRcElBRmRkS2hsalRPRUg4NVRheWxZckwvMDFXU3FG?=
 =?utf-8?B?eUZTVU8rWXF0cmpGMWxvaGpUWjlKdEYrNHdnTFdPRTE4dm9IMUlWNHVpa2VX?=
 =?utf-8?B?MHpJVVIxcTRRZE52T29aSDF5WGZGSnh6SngyUTN6dlRDOFBBV0hCdGpYblVk?=
 =?utf-8?B?dXppeU9DbkNvY1ZpZm94WEZhSzFvVHpacDdydlhBYmYwTm9xZXJ4VXR6aG5R?=
 =?utf-8?B?TTdQSStOaUVYRTNSeUJ5ZlVkazNydzZBR0grNG5JekpvYzdYajBXSXY2eURs?=
 =?utf-8?B?STNtZUwreGhBc2NjNk1WbGx3ZTJXZFB2Y25nMzQweDl1cFJpN0VqZEVXd3dy?=
 =?utf-8?B?enpJN3VtZHZXRUpsNFlScXdhSGVPS0dTUm0wT2tjK0piYSt6OVdWNTRuKzB2?=
 =?utf-8?B?OXlYbS9wbnJURXNBNEQ4bmJ1dWphUWptR3VZNnFCcFA0cHRaOVJFTERKSjdE?=
 =?utf-8?B?Z2U0QXlBUmpvTHYwSE1ZTDNIU0hHVXhrcTY4OHJGeHFvVUphOTlLa082aCtY?=
 =?utf-8?B?aytlVWdDRXJFdWwvOGUyWGpGV3YrM3NleWUrS1JOY0RmRVlYTjB5Y3U0OHlw?=
 =?utf-8?B?dDRYNUp5WVNiOHBpVkhEWHVNeVNPaFBiM3QvN3RDS2VIZ08rVWdoVUNLeXhP?=
 =?utf-8?B?NFhnVU9Ccklmb2lkdkNCaGVsdm9HMEI5c0N3WjNQaWNHRFYrcmVuSVdocFNQ?=
 =?utf-8?B?NDRZOEM3MGhuSVlNTCtzdjhZV09pckxSYmJDcE5ILytialhGNHpwRXdBdmVB?=
 =?utf-8?B?QnA2ZnB1OHhGcVM1aW5EcEEwY0dTZ0I4c1kxeDNiTlZ2dlY0YnZ5MFNWTklG?=
 =?utf-8?B?bndPemhzazgzZjF2OEY5NXFOb1dOZ1RTM0U2Mk5YeVZpSEJDN3djeWZya3lm?=
 =?utf-8?B?ZE9OVC83ZWFhYmRERHBwRW9va2ZSZTFjWWl6NWNXWXJjMHBBWG5heDg1Zk9n?=
 =?utf-8?B?TDk2MFBHM2VYMG41QUVlMGlnMFNISTJHc3lXbTZRcFY0TlI5NWdzRHI4SExE?=
 =?utf-8?Q?FD2tns2jPsPdP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzRHM1NvWFlPeUYyNTE2YUlUQW15NEtWL1lPR0NqalVCN0V6bUVxclU0Ry9C?=
 =?utf-8?B?MDZoZWttbUZJU2ZEZGxFOG5iZVdaSUNXSVlDNUk5WksxbHo4cmlsVkh0L2F5?=
 =?utf-8?B?emJZTGh6YngvWWpZNWI4c0xiWkdzRVFZUEZaMWNvWTN4bENXNkJSdVNyeXNu?=
 =?utf-8?B?THFVK1ZnZ0ZIakpsdkRmRmpPWXRJOGtLZDZHclJJSEppUlFQOTFQZWxFbncw?=
 =?utf-8?B?TmhlQjRXcVdtSllzRkhSNEZScS9oTjZmVmZQdHlJYWJiOFFUZE9sSVBYQjVI?=
 =?utf-8?B?enQyTWJUcmtmbjNnb3ZXRGFZczNqSTN4VlkwbXh6RTlhMGZOV095OUV3OTU5?=
 =?utf-8?B?dkd1cEFDdUhGM0FFNEd5bHZ1YitXRWdNL1diTDVnRUZYbWdqdnk4THZwUlNW?=
 =?utf-8?B?QUtUaWNJNjlVS1c4bmFEclNSb1ZRbXMxQUlkRzkvYk9BU01Hc3Q2TnBMQlBa?=
 =?utf-8?B?WGdsZkFDd1lKMENIcCs3TUpIa2NJbW9BdDBzLzZpajB5RXIwUXpLYW94V2wz?=
 =?utf-8?B?V3lMTEJaT0Z6MWtCb3oxU081eGp6b1JDakZqNFJaaVRTV0pJU0x1OGFTK2tD?=
 =?utf-8?B?cmt0TkV2cHNQdS9UNjZTWUIwSVp1dkM5V0hmTTNBOEtaRHlrZFk4ci9KdGlp?=
 =?utf-8?B?Vjl3U0R5cVBaVWlxakxtWko4Wm5wNTBKWVpxUXk3RzUyQThNS28zbGNSZkVL?=
 =?utf-8?B?cGJKMmpjNjlBS21mYnRKd1BoN2tJRWlOTmtub3lwakJ4UlF3dGtzVnZwRVY0?=
 =?utf-8?B?N1VFTVVNS0lzMWh4cTN1SmJDR29sS3M4WFppOTNmbktBM3o5L3BBeWdKMTMx?=
 =?utf-8?B?ajg5TG5GM2prMkFJNmxtaG9aUFE1YnZYRGV2WmtMVjNyVk9RTFUraWp6QTNw?=
 =?utf-8?B?ekE3aDhMZWNQTXZ5ankwSDl1VzZWYW1YUTNIVXlva05XTXE2N0F6bWlqR0lS?=
 =?utf-8?B?d2p1d0p2Tkh2OEJuWmxLb1cybm9yMXVlMjNDQjBTbXRSNHYzY3pCNGZ4Mlc5?=
 =?utf-8?B?ZUFnVWd2RXJ3Y1psN2c5MHkvelZVM1V2UHhnbVk5RmV4Qno2MUx5YklZL0lN?=
 =?utf-8?B?WmsweUJFRzAyQ0o3aUZQajFLODVuQ0h0MWhNSitwdlYxMlNzaHdOdDdYcklx?=
 =?utf-8?B?NWM4WXplRjJ1Wk5VZWZENE84dVFDMUpZeCtGd2cxMGR3Ni9wbjkyc1lqY3FM?=
 =?utf-8?B?YnhYRXVCSEw5UTVEcWZKa2VPVzBOc2dQRkppL3hTM3dQalVickc2dFFSZ2JM?=
 =?utf-8?B?R1dJTXZIaUxIajZ3TlBETWZXQWVtL0ZseWZnZEE1NUR2c1B3MmxFOG82WXRq?=
 =?utf-8?B?YkNQU0NJWUtLT3kyWjJRVTgxREhJZ1pZUGVsNXJadDg2c3MxVVozeG9Ia1Vl?=
 =?utf-8?B?SnNrUUh6U1R0RnFNaHRDbitiTElRVnlvWC9jY1pScndrYjR3MjF0Y0dVbjVp?=
 =?utf-8?B?ZGZOcW5oWGtpV3pWcXVIWHp1V0xYbGVFYVRocjFNNDloYTdCaTR0SHpYcVFu?=
 =?utf-8?B?ZlduZ0crcyt4cFo0c2xVWW9nUDZ6RVRjWi93Wi9RWFZ4d2R1MnFUWVVxMjhQ?=
 =?utf-8?B?SFNTb3pjYmxxUDVsS3RCSk5GY0ZBRnc2OHp6RTNLUEt0d3Z0ejNDS05zMFU2?=
 =?utf-8?B?clhFUCtYUzBkQXVQTUxRVWgwaDkzUURXZTRUMEc1RSsrT2ltbmVGZCtjMHVV?=
 =?utf-8?B?M2wwZVRvVlo1elRmUkNsaWdSc3UxYjYzL2I1ZGNDNHIzWEhDSTZYODVxeFJl?=
 =?utf-8?B?Tk5McklKb3k5UmZGT0tJVEZneVhWcGFjZExmMkhXdk9haW01WE13UGVERVFJ?=
 =?utf-8?B?VTdYK1hWZ01KUDBMaGNMbzdJNHFRdThtcHl5eVVtdUQ4UE50OVRqTFVoL1Ri?=
 =?utf-8?B?VWRrdUlicjl3djNISythbjc3QlFFalgxM3RQOFo5Zjk0V2YyWmdNajd4QUgx?=
 =?utf-8?B?amtYbFRZZVB3dlVPb1ZCK055eHN5YkVVNHArOGpLSjlLTHV2T3NQcTlpbnE1?=
 =?utf-8?B?ZTE1eTVaRE8xVno4NFZsQlZUeDRjelhpeXNPbEJDZjJ4TmdMWFkzZ1pGQjRk?=
 =?utf-8?B?ZVo4N0ZCc3dwZU5HKzhJbjdMbjFsUWJaZ09SeVRSZXpVVEJtY1VqTDRzbVB0?=
 =?utf-8?B?c1hhQ2tITEpCaWhpVVlKQnRETENoWUZFUEVsU2kyamtrYUNVdEhZZTBHZFZr?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: syVPkVvVAsl18HUByPGbzQJSehSgx3wkTMWD2YCJptWqOiyFzJaEm8bxOH4nuJ5rdXR24NECSTt2SyqbFrqfjI9LSBFlQoxU18Q51yjmAdS9DYcGtSaYdELo/21Q9cFcSefr1KhgxitpCN6hgbRP+Wn9vKKL4WGXz9Y/L5hLYuf5ACCzFQgtuaAiK71XnGwDerNj5k0HGsnqZivh5KoZDNRD4TeD1EZfXYJnDudbuwfLZ9SEsVafuSZ7W5w7pzNMbLlFXbsIpfYa8CTb2W0Psggtf2Tsuo1Wtso/R+ZrEY5wKoxegYyFAyVsW+jh1UcavBKzuy6Vk8N1pC7WaIZGQcrbCjxM+A7PW6MQ7iravFP5P1lcydcBpEwziJUl9CZ+D/kmEnFKZo8pUpddAms1SzCE7rXU7maIT3IoNP1tu85a2GU+yak477KD9Et1/LB7fyRTvhhI8pzpPiS4H3WOfeprMEGo2n056AdVg8+uxaiBHerS+sbsYC5xpA2Szfz8fZUjg4NXS6u6A0WagAlcpXQfYHJN/4nW31kjZfY7809FXibGl1UsEY3gOM4tdM6mb+9r2p1lOFtQYAEddnjNumryUICxq98Y5ldpPOjUfM0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffeea341-0f9a-4f31-af64-08dd60b8bb50
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 16:21:09.0707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UQ0eAUo/u0PDsKc15Xorawhrol4KzMHCUS8n632qCjKVlQSUrAuX6niA8M1E5gs0tSA+aP3486+vFxVLhrezO2y/RnRPA8Ss4ldZX5hto18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR10MB7583
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 adultscore=0
 malwarescore=0 phishscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2503110103
X-Proofpoint-GUID: Dy0nt0blSpuGqNkySdpADBb31KplmICT
X-Proofpoint-ORIG-GUID: Dy0nt0blSpuGqNkySdpADBb31KplmICT
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/25/25 1:52PM, Fedor Pchelkin wrote: > On Tue, 25. Feb
 14:41, Rand Deeb wrote: >> In dbMapFileSizeToMapSize(),
 the calculation involving
 'complete' and >> 'LPERCTL' can result in a 32-bit integer [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ts2NH-0006CH-Qa
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: prevent potential integer
 overflow in dbMapFileSizeToMapSize
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
Cc: voskresenski.stanislav@confident.ru, jfs-discussion@lists.sourceforge.net,
 lvc-project@linuxtesting.org, linux-kernel@vger.kernel.org,
 deeb.rand@confident.ru
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/25/25 1:52PM, Fedor Pchelkin wrote:
> On Tue, 25. Feb 14:41, Rand Deeb wrote:
>> In dbMapFileSizeToMapSize(), the calculation involving 'complete' and
>> 'LPERCTL' can result in a 32-bit integer overflow when handling large
>> filesystems. Specifically, multiplying 'complete' by LPERCTL * LPERCTL
>> (1,048,576) can exceed the 32-bit integer limit if 'complete' is greater
>> than approximately 2,047.
>>
>> While there is no evidence that 'complete' can exceed this threshold,
>> theoretically, this is possible. To ensure robustness and maintainability,
>> this patch casts only 'complete' to s64 (64-bit integer) before performing
>> the multiplication. This guarantees that the arithmetic is conducted in
>> 64-bit space, accommodating larger values without overflow.
>>
>> This change enhances the reliability of the JFS filesystem when managing
>> large volumes and preemptively addresses potential overflow issues.
>>
>> Found by Linux Verification Center (linuxtesting.org) with SVACE.
>>
>> Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
>> ---
>>   fs/jfs/jfs_dmap.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
>> index edb22cf9521a..380e73c516ee 100644
>> --- a/fs/jfs/jfs_dmap.c
>> +++ b/fs/jfs/jfs_dmap.c
>> @@ -4059,7 +4059,7 @@ s64 dbMapFileSizeToMapSize(struct inode * ipbmap)
>>   		factor =
>>   		    (i == 2) ? MAXL1PAGES : ((i == 1) ? MAXL0PAGES : 1);
>>   		complete = (u32) npages / factor;
> 
> Can it really overflow the 32bit arithmetic considering how 'factor' and
> 'complete' values are calculated above?

I don't really like the cast in the calculation of complete. I think it 
may be cleaner to just change the type of complete to s64 and get rid of 
that cast. Even if it's not necessary, it would be cleaner all around.

Shaggy

> 
> /*
>   * maximum number of map pages at each level including control pages
>   */
> #define MAXL0PAGES	(1 + LPERCTL)
> #define MAXL1PAGES	(1 + LPERCTL * MAXL0PAGES)
> 
>> -		ndmaps += complete * ((i == 2) ? LPERCTL * LPERCTL :
>> +		ndmaps += (s64)complete * ((i == 2) ? LPERCTL * LPERCTL :
>>   				      ((i == 1) ? LPERCTL : 1));
>>   
>>   		/* pages in last/incomplete child */
>> -- 
>> 2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
