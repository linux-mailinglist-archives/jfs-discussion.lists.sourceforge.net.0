Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C2D918A22
	for <lists+jfs-discussion@lfdr.de>; Wed, 26 Jun 2024 19:30:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sMWTM-0006um-LC;
	Wed, 26 Jun 2024 17:30:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1sMWTL-0006uf-Lm
 for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Jun 2024 17:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kq02ys2X37ZzZua4O31n4mlZ0ZV1TVsDTsSkjUv0NCE=; b=fWoKGWzAZmdZTYoqj7cHdf1fPK
 tOBCye2AG+WsMCvS/xhzaIV68PzGitVnjRaw33Rs8h5AOYjn+jJAq7xGybfmcG3SAvy7c7r4r8DGM
 bsdEH7jasfsQZkHh9lc5QkLOHvbbOqt3TXXAD/4YoOdLBcXm8HaP3GFJV9CTiXfwJwxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kq02ys2X37ZzZua4O31n4mlZ0ZV1TVsDTsSkjUv0NCE=; b=V2F4OdMhYQJ+E9ki4sENtKlTNz
 C7EvYRT0HcjLvRvFv1dxrt9Z0rabubgfku3ZB+2ueDeBTKWLBRg2J1LljLh3/PW9/Z6EQ0L7a3W+J
 DhypOOegFqd/1RxEQPO8Dt4yLQUi/wWWIravwnQSt9VDQzgRE83tcgIMPLVMxjyaK4dk=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sMWTM-0003tO-TC for jfs-discussion@lists.sourceforge.net;
 Wed, 26 Jun 2024 17:30:20 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45QEtX6A013227;
 Wed, 26 Jun 2024 17:30:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
 message-id:date:subject:to:cc:references:from:in-reply-to
 :content-type:content-transfer-encoding:mime-version; s=
 corp-2023-11-20; bh=kq02ys2X37ZzZua4O31n4mlZ0ZV1TVsDTsSkjUv0NCE=; b=
 MAW2nr7n7MwCEAgJm0w42/sCrOk7SWaAPDcKezYFveEyIyIdKmC7lS31uVrzb6/7
 N2ElDUt4kS/nModcgCgKwkKBaPVftwpfWcgjp5UgJsJuuytMG7FY+vwf32amqKan
 +9EpelRC29sLMfNTpWnWz02ULsBWK4TLO+/qLG68O0USanC7KcdYhbqpuZ3gRAvk
 auObOJb/SzNJzrRP4HpnevyAN0BzC2pQiuqDM6DXFYPOlLTfXFBWFtq2jWNOHK90
 M8UbgUiRXZKK4PLw8WZnxexteqfNS/I4fADztOATzfhSECgrIq92ZCG1KaJWwZnk
 GP4VWBCrzhx7dYeI/LsyJQ==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ywnhb4057-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2024 17:30:13 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 45QGoHW3001507; Wed, 26 Jun 2024 17:30:12 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3ywn2a25ds-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2024 17:30:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzvM6Ln/uR4GYTCCqChzCFTeKdGRATHA2XdgoF58RN4ybb5ceqDaVJbbiq9hiv3PMwFkb81OQE2uMU7YIL+zK/ZNGplQYJSs35ZblTaK8dyJ+sOig10SovCyBZcl6oLyfkaZv/X+0H0hYQww6Qihvyhos9CD2zUNbjlSsej+6yceHE3QIzsLfE3PSb81jgEgco9QwzNlVVi/ZrcE0AxD6ZIy0wrga+NvkVubp97T37RITbuMiJMGU83m34qFlSptcAuKh47X1a76Lqjp7WL6VtKXU0OmYZ2wdgY69+zzYxUfB5VKcKtTP1Kv0dBkqmAy5YDdCJBI8n+RIZyPUCHFEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kq02ys2X37ZzZua4O31n4mlZ0ZV1TVsDTsSkjUv0NCE=;
 b=gtt3Ef7JQe91yQH9YssdYDf2vnyLAoW87WSP7tYFifowkiPYdTFrGzAykpoD4Vm4Xzuw7yfkfSMtOHOGNzW6W6hvXBpwpmR1v8woFrJYYZSvDgkofGUmRKcTQjB6n5JE74ZgZhDemyvqVhQr/eXMuj4xiuogeN675anthQNy9ykFgVOfN2HIGxuOSfUxYTa4NwssXRYqgu0vMROMjHZ4DylLAHPwFLkD+e4QeHa78OuD8bPxF/IL9T/cCc8whSUG/JHiW2ycXx4cTyv8U/mUUCDw9YYQV1vQ33vuHIEM/DZBsmN3S10Y7vDMV/W9VZsBqODO7d7avHgy/oUoTiF7kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kq02ys2X37ZzZua4O31n4mlZ0ZV1TVsDTsSkjUv0NCE=;
 b=NrBEWI1v5z8CTq1P89kZJ7I+Yx1MLm/K9Z/cr6PsohUS2+ZJIOAHFtftCzeT1PwYSMk/K+m8mj2uczeI3ll2sWNWJ+uKvbw5bdMK5P95GFGrz9A2TS1mKoYOCyTPiALEdgxBR7IKAIYBGbnTPFZzYfvtyFXjEmjal9kbLiFuzx8=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by MN6PR10MB8094.namprd10.prod.outlook.com (2603:10b6:208:4ee::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 17:30:09 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%3]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:30:09 +0000
Message-ID: <455b4ee7-7fa8-4f1c-9711-6ebf583519e2@oracle.com>
Date: Wed, 26 Jun 2024 12:30:07 -0500
User-Agent: Mozilla Thunderbird
To: Edward Adam Davis <eadavis@qq.com>
References: <f4f7c644-b229-486b-973b-97c55dac334f@oracle.com>
 <tencent_4AA6ED5ECD6879FE6FD02EFD6D109638E80A@qq.com>
Content-Language: en-US
In-Reply-To: <tencent_4AA6ED5ECD6879FE6FD02EFD6D109638E80A@qq.com>
X-ClientProxiedBy: CH0PR04CA0056.namprd04.prod.outlook.com
 (2603:10b6:610:77::31) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|MN6PR10MB8094:EE_
X-MS-Office365-Filtering-Correlation-Id: 647fdc07-3034-4722-63f7-08dc9605a0a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STE0bkZxb3JZU1ZtUFJyL3dvZDM0VTNyMVY1OXJ3dDRodjYyT25Wb3BRbkhV?=
 =?utf-8?B?T0VSdnJ4OGtOeFpaeGZ5NnZiT25GcWZLMENzK1RtaERzNFZoeXF6dmhZMWJS?=
 =?utf-8?B?aTFBdE9aUjM1NE5pM2FIYVpsbWdiaEdnSEczdkxSaW1FTnBrRDJ3MGphSXhL?=
 =?utf-8?B?UlNPbVc4endzODUrYmtRcGJXOXcyVlBkWVFCR21pTTR1ai9uNG91ZFFkaFM2?=
 =?utf-8?B?ZENzRzl3NGFTdkRpV0ZXVmhLUkFXc0kzR09iYnp4L2ppLzZtRUVkb00wWVRJ?=
 =?utf-8?B?SW1KNkdQVm92bXhXaDY1QW9NdGNHV3BFTUZxYXhnZUlicXR4VDJyczlHUVU3?=
 =?utf-8?B?OUN5ekZYVVZ5ZXNIdGxQaVlTVlc5Z05ZZVNMdlVlU2xDeXZ2UUZDL0dsKzQv?=
 =?utf-8?B?SnNtTEtVTUFuYnZmbzEyS2R1OERGMml4eEJkeGNNMnZrNkpmbnNMcVpKMTNM?=
 =?utf-8?B?TzdjakZ1THdudHRIbjdpOWtIWS9mNkFjSG4wcVNnVGdDOUJBbzBvRi9Idmp4?=
 =?utf-8?B?dVpLMWpyMjZRVVhtSnFGcTMvMVcybERzMUx2M1p2NkNoR24xOFY1VEFuUVBZ?=
 =?utf-8?B?MmFCRUluNm1vZ0liSjNrUGlXMFQ0T1dQQ3pvU2xEUVU1UjMvRDVHaUJxRDdO?=
 =?utf-8?B?SUhPM2RQa3NZVzVlVWZ2UDhoWW8vRDVyUVhWMVBKeDllc1B1QjNRNUFNNVpW?=
 =?utf-8?B?Umx5bFNwTkVxR2RmS3AxQU9paHhEUXNmZHhmNm5KMXk0T2Y1OWczUE04YkNk?=
 =?utf-8?B?ZG03Zys3TmhCVU9ZenZEY1ByczUvQkhGZlFIQnN3VUZ3T1FkQmwya283ZGdx?=
 =?utf-8?B?QWtuUGJnK3V1TENXMUlPKzJJeWZNSlRlS3UzdXhYL2ZMUk1ISFBBYWdmb2lV?=
 =?utf-8?B?bElPQmRFNVdDOTRKeWRXNjM2cVI2amxyZnlBOVIybUZ2QkFVaWZ3YzhWRFlH?=
 =?utf-8?B?R1JYTzVqRGI1ZVU4c0JmbCtoUGhHUVQveGVjaUl0amZ5UEQ2VFZTMjR5eWRQ?=
 =?utf-8?B?UDhRQUJxc25VdWw0YnNzWW9aMzBNbEszRzFObjU0OEV6MDd5S3lObGVxeXkw?=
 =?utf-8?B?TC9DQjh0dnROVmZocjFLVTA1ZnRMYUhKU2U0K3hkbUNLdUhydHRzRkJ2bng0?=
 =?utf-8?B?c1Y5U29jbHRTRHhnRHNCdVZtWXYrendjTFROUEowcG51MzRxUWsxZVQzcjVx?=
 =?utf-8?B?dzFKZGswRDBHN3JWWFN1QXY1QVdGZHFlTDVqUnNKMXBuaDdNdGFnTjd3YWI1?=
 =?utf-8?B?aUx3NWUyK3pmSElvSXFpN0sySTI1Zy9obE5mN3FnaFpMQzV2Y2JDN0V4dVhY?=
 =?utf-8?B?OUlLS3RVam1yYVoyVWZUQVJ0aWhOV1pOWDZRdUdxWjhYOERiL0gvSXhSUE1F?=
 =?utf-8?B?dWxoTkUvQTE3cURnQnlYd1pvcUVnanpWRC9mYjIwYmFkTUVZQmZFS2Jxd1N6?=
 =?utf-8?B?cCs2L09BV29xbFFqYkZmTzVVZzRjNTR3cE4zcDRWZUlsbkl2aWo4WmtBc3c3?=
 =?utf-8?B?T0xpYlVKd3doeHovN3cvY3d3dTVSMDV4MjFoNnhhT1JzUlZFUnVpMnFmcURJ?=
 =?utf-8?B?V3dzT25sQzd5WlpSVmlsWnlvK3NVVS9QbjBJMFpuV1FhaWF4QkEzYWlROVo4?=
 =?utf-8?B?blo3Y2F3WCtkb05XWlQweTNwUUNHSUIwZkJsMjREWWwvL0xSbWdraEYxdkw3?=
 =?utf-8?B?YWZRTForQTBreHQwNFF5MW0vNk9sNVFKRHNTVGk1MkZrK29PKzVSZjVNUFV3?=
 =?utf-8?Q?0SuZBF8+F4bgQfgldTEHWFCGcu+BQAvmRvvXn5y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amN0Nlpmb3lKdWJPSFUvVVRhTExTQTQvek9MTmRNN0c3VTl4aDQ3UDhkVm1k?=
 =?utf-8?B?djJkMVdYaXNvUEVBaUVNbHppeXlxSjJvUTBnTHExcXo5OWhVVHVYYU91Lzhp?=
 =?utf-8?B?RHdUM05ZSFo0cHNxTC9yN3NmNkl1clFWaHhtcnBhQzNzVzFJSXRlVDRzZity?=
 =?utf-8?B?Qi9EQ3cxUU1qRUd6VjNxRW9KcVNHWSs5ajhBb0xRZ0VMYkNtaS9tRHIvVWJm?=
 =?utf-8?B?UkdzVkpOb0FtNjBkVnh5d24vUklLL1pVWTJKeUl1alk3NzNFWWwxNmorc1FW?=
 =?utf-8?B?M0VVYVNGVGhuNDVveUg4eHhxQkdFckgvL0NZTmR1ZVVaUEFFQlhpWnQyK2F2?=
 =?utf-8?B?cklqdmdtdUZzWGtFc1VzOG4rZHRwWldIZDlxTTVTZDhDY3BFQVhCQjZDZExk?=
 =?utf-8?B?YlVUOEhnSHhGTzFMRFhuVjVJTThrQ1l1bitjVGVUYjl1YWZ6bjNTclRORnFH?=
 =?utf-8?B?Z0pCQkpZaFJqVi91ZEpUdDd2S1RYQ3JSbi80SU0wQTA4K1l3bENEcHRGU3dU?=
 =?utf-8?B?a2ZPc2ZDUHBYTFlBbkRmeVRGeTBRNWJ0ZXZMbmxLUUR0RzFramlQYUFPZ1JN?=
 =?utf-8?B?ZzUxYmhYUnJxazNEZC9URG9zZDNnOGRUMFl0cVZ1bnpHRWtUMlI4Z2J2T04z?=
 =?utf-8?B?dDEwTHgrMGJvcEJMQ2NSZWxJS1Q4Y2F0RGZDNEZFUStHak5uSlJXTkVVMGRt?=
 =?utf-8?B?aG43OTNkTEpVWC84Q29veUdCdEswZjZPQWRKVXZGQW0weS9oN2gyVkJUTWNk?=
 =?utf-8?B?R2ZwbFBGM2RrRGZwNFBIT0ttVVFhOGp5d2tDMGhoSXZsL1A2cFd0UVUzUFlX?=
 =?utf-8?B?cnoxclY2S2JGRVo2R3JCUkJTUXphWU9sc3FOaWdJQ2x3Qno4QzV3UjZ6RElP?=
 =?utf-8?B?VkkzSVNpcDRBbzI5MkY4elFUSHlzOTdubzFQWDJ2Zml2VWhLUXVXcngwUkpy?=
 =?utf-8?B?TVZBbytxZXRqbkFRSXo1bFNjMHRmSWFJZDN4V2h5eEtKUTdESEdpK0NkVVNn?=
 =?utf-8?B?SVRNN3VmUXdia0dTRHBUWG9nV0NPNUNsb0pqamd5ZXlJZG1heDJuMW5zY1Bi?=
 =?utf-8?B?WDBVN3dzaU91WGNsS0wvUVZtdzZwakhEZDgzNk9obEhDTWhabjBndjBQSkI2?=
 =?utf-8?B?eXRwaWFHV3MvcDZ3T0ovbGswWGIwdXBnN21rOGdqZkplajZ2WFd6K2x5dG44?=
 =?utf-8?B?Nnh2aVVEWFlNRWZBbkxlWTZIZmNmZTFKS0pjTDZtOGIzSmlGd3NrMEgzK0lT?=
 =?utf-8?B?TEhlNHJtald4eUN4bjdFU1ZpZDVJN0pkSjdZMExiY2tlK01qQzB3anBWT3RW?=
 =?utf-8?B?Nmx3T3huNE50NjBtUjI3cDZ3SVM4U3l5aENWOUFPZGNmSDE0QXBhZzFQY1pQ?=
 =?utf-8?B?aG91YUpuRjNpam9MZXFSUjdhajhMUUp3VGhtUGlxVUdHU2h4c1hraTA3aGYz?=
 =?utf-8?B?VG5DdDRXdWNiT0JtbndNYmN1NGRRUWZkS1BDU1FHVXhjVW5UbFZUSXNuSytI?=
 =?utf-8?B?NWpxYTdrTVoxZnpXUjAyem1oWFphOWY4cUJobXgwTlJzbG1UVVdybmZJZ1Qw?=
 =?utf-8?B?aTlmUUsvQi9uYXI5NWlmV3NRMVd1ejFPZzJrblg5QWpwRXgyR0RjemkvbWE4?=
 =?utf-8?B?Z3BkTlhqbFcxWnAwbkZzWm5SMTZ6VTRqSzdqRTl0U1hrNzdpc2dIT1I3Zytl?=
 =?utf-8?B?RTBRckExdTU2c2s2YkhCM2h6ajN1aVJVOTZ1M3VrMXRNM2tJWmZOZ3c0bVVQ?=
 =?utf-8?B?R0RYRjFJMHRoUExXQW40Z3hBbGI1TjE0ajcxYkF4T2Zwa0tZSWx3RkVxcXJo?=
 =?utf-8?B?WEpKUzJZeFhBU2w2YncrUVFIVEErOFFuYkFKRHRWWHBjaWFGV0hHUFNzMkpG?=
 =?utf-8?B?clYrcTVrWlZzUjc5Zm04KzF0V1BtMWZXUGRHWGdWR0ZwNXRyZDh0MTBpQnJK?=
 =?utf-8?B?d3hvWFNkQXRZZDdzdHVEVXNkRlQ5T2FUL2pMQzFoVEFDRHdRSjFIN01LclFN?=
 =?utf-8?B?cllSMy9RaXBxRmRzbURqNVZNRHBOTU1nc1RGMy8vYXBtcUI0MnBTdERVVGJj?=
 =?utf-8?B?M3R5M29rZXUvOENUWDFzSXJ2b1NaZ3JNVGZYUURiUWpHN21wMlNOck5BZnE5?=
 =?utf-8?B?QVdmYmpQS2hWSmw3S01JWDNJK2tuMXEyVGp4NEJuMmNaMXlEaVhhSDJEYjVR?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: TMnArydFAcIWX5EZkWQFI59PaPYRny8/2rxkwct1hodEsHyy8CXyQZpVw8sVkOnvmE3/dSNEvtjoLT74h0nw+tzlRUHqcykHjlqxdzHDV5tKuiIvJlZv/oZtB3Rwowvv9j9a9yGO1NsG2AeJQj7muOeHm2cYDTPG9r+LXvioNnz+yxi3CCIRxhcCYzssPlM3Lz+SNUPbM7N0oHPazNeeXNROBrfD/+FqGuHY0CWrVeI2Q59byKLSRiv9vgHobloUBVhXD7ecr9UHW+aABJ+Z9KwWBIXxd7ZcQFZVYghmnI1yDnH1BpUrXuLzLugYRVABKzkk8JoV4Qyr/TMvkKdFPZnm5k6M+qecmI1U/XI285vhgATckp4o4JHTahX4kPdbqqvN9FEh5beska+mEOcOV5ynFKrWrW/R2m+GkiAbhzlefbLWeGgdG5dVitUnhZND51bLbQqX+URF4hRV/Q1tYDDgGNDoDjyzoPsyzndIy60BvJvS5dz0Fwl6/Rm2wy2iJ8wY9IqKLgKNB/hVwmHMn7rlpQGYUuB71P1q0C3EB0hf0V7lg+QqXHMeKiMvjgDh3bajsDj5KmvtHLDlh1xU5WzW2V4c2Feoa1vIuH4QdEw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 647fdc07-3034-4722-63f7-08dc9605a0a1
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:30:09.6651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5+2XvBnEd7J679/+yVo8BZnBlOHTAphvLl5Mqj1qJHt0fy9ewkWB7hWdQbzceqdw6nBcqv6BxnCdGKHo6ncrNvmeID688gx/1zEzXAveDsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR10MB8094
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-26_08,2024-06-25_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 phishscore=0 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2406180000 definitions=main-2406260128
X-Proofpoint-GUID: eZdKLe5qNQ9aB1BkYzy0DepmW2_e6DMC
X-Proofpoint-ORIG-GUID: eZdKLe5qNQ9aB1BkYzy0DepmW2_e6DMC
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Finally catching up on some neglected patches. Looks good
 to me. Applied. Shaggy 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.165.32 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.165.32 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sMWTM-0003tO-TC
Subject: Re: [Jfs-discussion] [PATCH V2] jfs: fix null ptr deref in
 dtInsertEntry
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
Cc: linux-fsdevel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net,
 syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Finally catching up on some neglected patches.

Looks good to me. Applied.

Shaggy

On 4/11/24 7:05AM, Edward Adam Davis wrote:
> [syzbot reported]
> general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
> KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
> CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
> RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
> ...
> [Analyze]
> In dtInsertEntry(), when the pointer h has the same value as p, after writing
> name in UniStrncpy_to_le(), p->header.flag will be cleared. This will cause the
> previously true judgment "p->header.flag & BT-LEAF" to change to no after writing
> the name operation, this leads to entering an incorrect branch and accessing the
> uninitialized object ih when judging this condition for the second time.
> 
> [Fix]
> After got the page, check freelist first, if freelist == 0 then exit dtInsert()
> and return -EINVAL.
> 
> Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
> ---
>   fs/jfs/jfs_dtree.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 031d8f570f58..5d3127ca68a4 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -834,6 +834,8 @@ int dtInsert(tid_t tid, struct inode *ip,
>   	 * the full page.
>   	 */
>   	DT_GETSEARCH(ip, btstack->top, bn, mp, p, index);
> +	if (p->header.freelist == 0)
> +		return -EINVAL;
>   
>   	/*
>   	 *	insert entry for new key


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
