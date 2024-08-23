Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C83D495D5FD
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Aug 2024 21:19:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1shZo9-0003p5-VV;
	Fri, 23 Aug 2024 19:18:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1shZo8-0003ox-Ic
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 19:18:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3CLRd9qmNHvU76cN79PpWoBinm43/A9TSLIAjr4Pc3s=; b=Ec1w/iQhziFLOAoYv3IhQgYCKU
 9PQ114oEGrnaV1AneS0Qz0gphCHtOMUJn4VEejcASO7gExeAiLz5bC5AlzzyOyFvYIQN61L9wWo7L
 +cz1y/cpDzLMmlPeTWte0y+v+xJDSg9+97MgK7J2m3fAfrmO8/QSK5gCZKlYDaphOGbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3CLRd9qmNHvU76cN79PpWoBinm43/A9TSLIAjr4Pc3s=; b=dx7XVKngCVIKmChhYcm4zNoBSe
 q9TOqUlLd+hO1AmmlgvEsj+P5nzJPn1UJNwrGhT+N7z7wReyEHahK7QgfMpiJDSAsVKVG6OTlW4QQ
 P4LVpO/qjDLsESG96JGuCBI+2JyTo1n19f/ryovsV8gs2boY8jfpM9kjNQ32gmm9mwKk=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shZo7-00024i-5W for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Aug 2024 19:18:47 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47NH0We4028481;
 Fri, 23 Aug 2024 19:18:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=3CLRd9qmNHvU76cN79PpWoBinm43/A9TSLIAjr4Pc3s=; b=
 SUGZ57h4pVBhNHLOsTW56EevYC3jTRJugL9Y6TDkSbMsIvZNY6wV2lZ3kQHVCweH
 ubamP4+y0KqzRVAbbG9mi/5B9HzBXNmYaMGPCTqYAtOk7UjUaPGl/8Rhpbd/Dw2m
 4RV0wHrkCNrI3XaTlMQhuI7/Uiemu/D8EDFQ/nbeAWFgTLcOqdA2YDNWA9eJCNig
 RDufIabamPxqxgLsoBrUM5LgJxx2nvW1L4US/onIbMBI+Em4U2uuNR7g01QiKqNW
 LDfMFtTaIY12s6adwFVMVLOQnuhT417nRfIU2s8cVtzkTpYBB5KOE/iJLZPj6RMU
 mwpJ0YTNqHAsqDtbUpb38g==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 412m2dn6ew-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 19:18:40 +0000 (GMT)
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 47NIYabf039567; Fri, 23 Aug 2024 19:18:39 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 416ytw9ns5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2024 19:18:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=riQWr64oFqKu2SjqE88C+M7DAk2tVWjMT+63KsQZZ24FqEdGuy5Ssgx3EQ1TwwgpMjuQlfpYm5UFb/+N8RGskPFO9goHr57obliI0fuoDexZbHJTchosI0HU11BWyAgfH0vcfkzDlIp8tlhRUmpuV8YE816bTn+NM8khuVWtPzN/Qctfif1ozJrV/KYjiqUmvnYpw5NX7jSb+W2+gx9iyYy8VVqWuTDLddWYPEWQw8MefHPnLKZpIeBb7h0d/OoJB40N/gjwtb+nG4zjQYZUn8UviQ2t2DB1yM2ilWTiKNY12t+p1A9/NW9Nd60WxOoqPCS+xq5K1kZiRsKwQna6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CLRd9qmNHvU76cN79PpWoBinm43/A9TSLIAjr4Pc3s=;
 b=VRHcvKMtHeqyvDdWIebq6y8QEreDAW6TUC/WQbK44jhO+pNwH7qJnQUF4IfFLxHjwu5scYS3ijB3KzNo6/+IHH6oz55vTqb4m3EgxELtXjyIxHj2zHnF1Otj96fIbr5LFLaKmTQGfYASUsXqHpBaS0eTKFaIPZXrDoT6JIJgmFdmLpohEISsPAU5OKk92cAozRHI5mKLuIk+BmMx99ci0g4SOZpIaQYzGeDFlJPbnRpy2Uq+yOoY80AetxSozsMihWqr4v1E9Vd2F5gm/tetRAubcDX0dAd1GZAvwgx9tO/RWJJmqgp3+c0GyCK2PvsW9zdGBNL7lWhpsXcHJpvOvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3CLRd9qmNHvU76cN79PpWoBinm43/A9TSLIAjr4Pc3s=;
 b=0DUxlE7lLs0jZtxBQYvP7acVR9lqiMjSEd4kd3icM98V7yXGlFcKVekjYEueoBGE4LOpmRqVnglnSiWXFCl3byhGQumPeepNxqSaXNqW3tePBEEO4etW4UXIpJ53sIHbfg5awXx8SEr1ZGeQWTQn20nAP6Ly8D+Rwy5dJlADTUU=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH3PR10MB7433.namprd10.prod.outlook.com (2603:10b6:610:157::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Fri, 23 Aug
 2024 19:18:37 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%4]) with mapi id 15.20.7897.014; Fri, 23 Aug 2024
 19:18:37 +0000
Message-ID: <d9e728ce-2517-489e-b86b-7c33ee44a364@oracle.com>
Date: Fri, 23 Aug 2024 14:18:35 -0500
User-Agent: Mozilla Thunderbird
To: Jeongjun Park <aha310510@gmail.com>
References: <20240819040546.182577-1-aha310510@gmail.com>
Content-Language: en-US
In-Reply-To: <20240819040546.182577-1-aha310510@gmail.com>
X-ClientProxiedBy: CH2PR18CA0032.namprd18.prod.outlook.com
 (2603:10b6:610:55::12) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH3PR10MB7433:EE_
X-MS-Office365-Filtering-Correlation-Id: 19fa776f-8aef-42a1-5e0c-08dcc3a863d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y05SN1ZIeW5YbG1lYXUvS2hQUjdRUXBIaUp3NGRwUElPcWNLUGxXNXVKZVlC?=
 =?utf-8?B?bU1NK2kvWTE2OFRwamh1WUhEYkJjY3o2UFBhTjgybmJ1SVE3c1pMMmVIRHRB?=
 =?utf-8?B?NUVueHVuNUNJa01RdkRMNzVhbmFwdDhJSGRibGFSM24rbmI1TFB2WnJDYUxC?=
 =?utf-8?B?TlhEK0ttR3Y3eFhKbkZESE1qYVVzOFRiaWxiQkFMdFRpUzhGb09VQklITHpX?=
 =?utf-8?B?SGt3ZDNORnM2NkVZN3ZRSjFjT1JCMy9XWkhCSmtKTk1CSlNZMHhxR0ZBZEpn?=
 =?utf-8?B?NVphZUpOQWYzR2trbWNQOWxKc1hSVG9Nb01HWXBnOFE2YWh1aEJacGNKU090?=
 =?utf-8?B?N05iVnE4bW90TFhzdERuWUk2TVVEYU8xQU9mbEdyWVBIQmxWdU5ta2hNU2RW?=
 =?utf-8?B?S0YzdUdYUGZVTWZYYUc0L1RaVzNXUDhtQ1FSVUExL1FIdFFPdFhlT2ZYbnlh?=
 =?utf-8?B?UFBiSEZZSFA1QUx3cW1NSmdyQ25Kc2J3bmJZcjQwVFR4WWRCRDJRbWY3cFhF?=
 =?utf-8?B?UlFhM0dlcTBTcFM2dG56STN3UWFCTEhTaW0rY0FmVGI1dzc4RWUyTHFIUmtt?=
 =?utf-8?B?MDlWOFNUMWNCVmNDdmpCRFNNNDlMbllYSy84ODZYcTNjbVB2Z1h2UDZ2amM4?=
 =?utf-8?B?ME1vRVZMNGxWSytTR1FLK3pJV0U4bDBNNjViZ3JMenp2NW1CbmFuSTc0dlAw?=
 =?utf-8?B?Ylk3d0M5YXlYTmZ6dnpxYzNIbTI0a0Q3MjJ0UDQ4alErKzNRb25qK0pkZUZU?=
 =?utf-8?B?am00KzhGZUoyRlJwbG9jM3JKU21hdS9iVnFYanM4ZVAvcXhNeERtdXFzVDlE?=
 =?utf-8?B?dmRQNUtabkczS0RhR2E1UHlpS3JIeEVpRjNxT3pYaHpkdUxjYXNyQVlaYzZS?=
 =?utf-8?B?Z2hlNTVXTjZxMEorYlV4TWw2TE9rTURmVWU5WTBnbmhQcmNDQVlNT20zVGV2?=
 =?utf-8?B?ZTNWeU1tazVWU2ZpUks0amdUMHJSd1JCM3RZN0FFbDdqQWpEWG5mV21kSXFJ?=
 =?utf-8?B?KzB4aFptdStiQk44MmVXOVlSODdLYm5lU2pvc0VuUjQ4Z0c2YnNjS293NWZz?=
 =?utf-8?B?eUJlTmtTUmgxSzh3ODN6NE0walJ2YnhEVGVGVmgzdGlYeFFHdFlsZTBwS3g1?=
 =?utf-8?B?RWpEbWhtMC9zNjg1NDJlWXE0TXdIUlhsODdHL3FUdmVHRWsvMnpzbERWYXBL?=
 =?utf-8?B?ZlZ2T2NkYlFtUGRiTzFDNzRvYkRyaktTWTYwYURaU3ZaWTZpajNxK1d6R3NF?=
 =?utf-8?B?Y25pTy9EdFcvUUZlLzJxUy85Uk9kRUlvYm5FOEJDV0pYVTV0TC9oQ1Z3aUZP?=
 =?utf-8?B?dG5MQ2RjUUQxWE9VVEZMNHNNSWZsZTFtSmZWOHpaNmh0WGozRGRpMWRJTzMw?=
 =?utf-8?B?RWErdnNseWkwRUZObjhHTE9pWTJ6am5NNnRZdXJMK0t2S0U2MkNuWTJGSGpT?=
 =?utf-8?B?QnNaQ2ZSaFlaMzFOMjRJV0hmMmF2SXpPSDJMWHpQVTE4OHBaTGpVV2hKTXBF?=
 =?utf-8?B?UzhpRWJPL0hiVDBNTlU2Y0ZUMTB2djlmLzR0eDhLekR2d1NZa1pzM2pvQmRG?=
 =?utf-8?B?REVneHZGODZ0cHh5ZCtwdllPLzZ2V2ZZUFR2WnhyRTdsc3liejFZUnE3TTk4?=
 =?utf-8?B?bVZRSDlRNStNYmNEK2FRaHFUbXVua094ck1sc2xIczRrTUh4UjQwb0NkOGVF?=
 =?utf-8?B?aTMrWlVRcVExczdYbDBrcVRJaVBDTXdYanF2S1NxVkE5SjY0alFhNWRJYWM1?=
 =?utf-8?B?eFdPa0hzaEJVK1pKZUwxZ00wVVB5dFpCT05acWUzYzFJNnNNZkpwVU8xcTI2?=
 =?utf-8?B?Qmo3aElMb2pUZGhOWFF4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0k4UW81WElJUHpCRGpRc3dUN2VpOHZrV2V1U3Ixb0tNSmN0b3dlUzYzREJN?=
 =?utf-8?B?RXFjT1ZiQkI3WmdQVXplbEh1bUh3WUZIMGhwdXdPSzRtNFdDalY5azlWcTBr?=
 =?utf-8?B?WGIvU29nNUREd2QzZGNzTzhVS3F4VVRnQ3JXS3Bhc3J6SHROR1ZRMU0zRHEw?=
 =?utf-8?B?QVB1cllXdnpJSklZelZ2L1VqZ2J1WHN2V0FwVUY3VEFITGg4a2c1UXc1OTNO?=
 =?utf-8?B?am44aUlwbVRpbzVDOFh5V2FEdW55RVg0dVh2b3crTzBBVXRhWDZ1QXRSUU04?=
 =?utf-8?B?RDZSODhvZjZ1bTBjSWxtME9mV0Z4TDRFUnRmSUJDdnZWRDc4RlE0ZHkrd0hJ?=
 =?utf-8?B?NmFPZXZWSWtvQjZyUkVRZEdSL0k5S2J1OW1RT0FEZVNYZHVuaEx4Z1NYM0l1?=
 =?utf-8?B?d0RIaVU3aDh0aWVqcGN0N1ZoOWNtOHROT1ZhMGcvL0tEU254QUNkKytMbUc5?=
 =?utf-8?B?TzJMQ0ZJRkV2TmplZlR1Wk15V0V3N1lyalRxTzl5ckNyUXFGZVNTbGI0VmdW?=
 =?utf-8?B?YVNzT1Q4Qm9TdHBSaEdoSi9Ld2VLMyt1VTNPMENGRisvWmR2VEx6azBNSXlu?=
 =?utf-8?B?bmxRZ2s4bC9ielZrM1ZOek5wREl3OU5ObDJMdU9qSlM4eWVqS2dwWndhNXEr?=
 =?utf-8?B?Vnd1MXVVTnk5cUliZ2Y2WFBXUVJ4eHNoWXc2U3lDQ1F3Z1RCRDFDVXdNS1kv?=
 =?utf-8?B?Y1I5RWNsZ21lNjdVTDMvSWYvOTJZUXgrTE5NVlM2YjFEd1JDVWlwMGVXaFhI?=
 =?utf-8?B?SmlpMGlqeHlRekR1UUpja3FTVGkxUUZNTzA0djFnaXNCRWdUSXo1RlUrdy8y?=
 =?utf-8?B?S2hsMjRQNEYrUjVTbjNsK0h3ZVhVTHdqQnBCVXduUHdJenJIZnRLL1QyQW1j?=
 =?utf-8?B?YmtHYzhBUDBFcUtzOXYvMFJXYVNpZlgybUNrb1EzYmt6S0JrY2oxenIwKzM4?=
 =?utf-8?B?NUEwV2NibjFsQ1YvTmh6YTZ6d1NpV01NZnJQSUVCRlpIcUUvZWdRV1FBOXBv?=
 =?utf-8?B?TWJmMmthblVZT3NxN3NtTjFKYVhOY291K0Y4a2JpSVFHNGFoelVoUm00S2l1?=
 =?utf-8?B?Q01RVTFSa0QzL09PVXg3NzNsVUNsTDBIcFdaR0VjRk5XWTA5SlJLZlhqTUhT?=
 =?utf-8?B?UVFIT1RhYzdramd3TXNibkdUNlgzMXp6ZFVzQkxZcStRSDlOZDJMOURYRGhF?=
 =?utf-8?B?OW50RmRSUURRZzdZMnBJRE4waTl2d2JtNVVXcDhuUTExYWpUWEExZllzeU00?=
 =?utf-8?B?NGlXdHp6NEhxc1BSUk1Ha005YjZ6ZHBpKzViSm84NklqbitDTFdLeUdQR3Z2?=
 =?utf-8?B?Y2R5eFJ3SjdIZ1dtYk4vOUNydDIyM0xuL2h3Vm0yVnpLWVNHQzUxRTZrbHVG?=
 =?utf-8?B?NGZYZjlEMmJZUnZhNEtVbnJxaUEvYW9qVVdvUFR2b2RoZnNnNS9rVkdSRmFm?=
 =?utf-8?B?NXpHSG5WNUVVT2R4dTRTakVqVzdUd0JGR2VMb25od1FSbzJrV1hBeG8yajcy?=
 =?utf-8?B?RmR2SlZjeGcvWXkvaXNNZ1ZzbmplV05IdlU1blU2emk1ZmUrb3A5YTFXcFBz?=
 =?utf-8?B?SFNhVUlnb1VrcFNKenJzWnNiaFIyVnk4dk9aMCsrM1JZTndFejZqeHM4aHBH?=
 =?utf-8?B?T29HazFKM2RYclhXczZDQ3UxVThLUjVOS1V4R3Y0TU8zTUxMNmxnenc4WUlj?=
 =?utf-8?B?VHoycmFRNDYwa2FjQXU2aHJMaWVQT3pTN0NWUWh6b3pjNVhKYTgycVQzUXZz?=
 =?utf-8?B?QXJ4cVZqSEd3NTM2TGdscFZUcEJKcTFOdnBJRVU0SnoxMXdjQUhtTEZaUWhR?=
 =?utf-8?B?Sk0rYU5yd3VQaHhMRU5vZ3dZbWRicU43eUlnTjRqU0QrcktBSDFNUno2U3hM?=
 =?utf-8?B?ajNIRnBmRDhOUFBBaUwrMytiZFcvT2xvZkYxM0pSR2l4T2pRR2VmZjdSM2s0?=
 =?utf-8?B?TEJYVXAydmw2R0ZrS0g2NlZFV2o2T1ZsYnB6bjR5eEEwRm91YkgvME9OdnFi?=
 =?utf-8?B?MFJ0L1kyMmV2MTZ3bk92UGtEdGJFVzhyMGVzRGRUblFHMmNtSWN6VmFzbEph?=
 =?utf-8?B?WkdSWjI1MFFZUFBCQUhRZ0xzN09UdGxQZ00xNkJvbHJpTS93VEU4MzhrZzg2?=
 =?utf-8?B?dUcrQW83dmcvNE82LzNHcXU4bUd6MHdJYklTdHdDcXJESDdGL3lIcy9rdHdl?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: Ic2zEMzlqufhJqgIcPcvPXwaDCec5FjrUfkPzg+49bvUvQ1OBEVSMifc+vwrpbg+W/J2LxpXOyPfFYkNgMfY285Fsu5SzHtDQuNdTEX75Nd54i5FfD2L5VLuYKL6hY7hM9OTvnTI28mG27fbvgnTQH6CoX+2Hzb0IS2v0sDUuRZrCPFEM8Y6YySUY4DIjIxMTCv+VcvDbqo5Xr77h5mMaT7c3TN2tosI+9G4ZWsDU9DgpkgdIob8Z8A+pe5Xp7gP/RxjwgPyTje0jGyQVsLGAQGnA2haavvvsH+5YbqBRS+x2dBKfc+dLbQoacnXMo41ihe9DrNMYDl+tvYRekoJtqnjU0WeVDVJjZigulcpskfE8UUZYauc6V1ovAaEG55RlawNHELbIj5kkdzQiVCQo7UvEp0H6rPkZcuEXkAonzRgqq1MYlxvsbIkZzuMaPFeXvdyaC09+2QSJ4Sdp6UdmJSqP0oRCSRLBtqyy2Pxtz38cIib6oSDvg/328Kb/VU97Wzn7UdmSjB0hm4dAm+bsRz9mcojRFkTgTtExXQMi3zxKk45KPyt7s/cpmRQGSu+xm7i47rOXuhI20rg0mXiK814MId5T/8avVAC0qM55EQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19fa776f-8aef-42a1-5e0c-08dcc3a863d6
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 19:18:37.7994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3TuzFTLpsa3YSgaW2+K4Xpz1sLapaiSbAy5FBvgBoWk/OFaV+kg/Pv2UxGOuoP7NikC6Iq9MgIw4vjsk3PZ3YARe/N31CBECfOMxaZUiFIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7433
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-23_14,2024-08-23_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 mlxscore=0
 mlxlogscore=998 malwarescore=0 spamscore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2408230141
X-Proofpoint-GUID: GM4MCCD6EBf8fy3imq3F8p_eMz-427VL
X-Proofpoint-ORIG-GUID: GM4MCCD6EBf8fy3imq3F8p_eMz-427VL
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 8/18/24 11:05PM, Jeongjun Park wrote: > In dbNextAG() ,
 there is no check for the case where bmp->db_numag is > greater or same than
 MAXAG due to a polluted image, which causes an > out-of-bounds. [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1shZo7-00024i-5W
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix out-of-bounds in dbNextAG()
 and diAlloc()
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 8/18/24 11:05PM, Jeongjun Park wrote:
> In dbNextAG() , there is no check for the case where bmp->db_numag is
> greater or same than MAXAG due to a polluted image, which causes an
> out-of-bounds. Therefore, a bounds check should be added in dbMount().
> 
> And in dbNextAG(), a check for the case where agpref is greater than
> bmp->db_numag should be added, so an out-of-bounds exception should be
> prevented.
> 
> Additionally, a check for the case where agno is greater or same than
> MAXAG should be added in diAlloc() to prevent out-of-bounds.

Looks good. Applied.

Shaggy

> 
> Reported-by: Jeongjun Park <aha310510@gmail.com>
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Jeongjun Park <aha310510@gmail.com>
> ---
>   fs/jfs/jfs_dmap.c | 4 ++--
>   fs/jfs/jfs_imap.c | 2 +-
>   2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 5713994328cb..0625d1c0d064 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -187,7 +187,7 @@ int dbMount(struct inode *ipbmap)
>   	}
>   
>   	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
> -	if (!bmp->db_numag) {
> +	if (!bmp->db_numag || bmp->db_numag >= MAXAG) {
>   		err = -EINVAL;
>   		goto err_release_metapage;
>   	}
> @@ -652,7 +652,7 @@ int dbNextAG(struct inode *ipbmap)
>   	 * average free space.
>   	 */
>   	for (i = 0 ; i < bmp->db_numag; i++, agpref++) {
> -		if (agpref == bmp->db_numag)
> +		if (agpref >= bmp->db_numag)
>   			agpref = 0;
>   
>   		if (atomic_read(&bmp->db_active[agpref]))
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 1407feccbc2d..a360b24ed320 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -1360,7 +1360,7 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
>   	/* get the ag number of this iag */
>   	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
>   	dn_numag = JFS_SBI(pip->i_sb)->bmap->db_numag;
> -	if (agno < 0 || agno > dn_numag)
> +	if (agno < 0 || agno > dn_numag || agno >= MAXAG)
>   		return -EIO;
>   
>   	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
> --


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
