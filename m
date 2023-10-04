Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A79807B822F
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 16:24:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qo2n6-0004Na-R0;
	Wed, 04 Oct 2023 14:23:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qo2n5-0004NT-Dj
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 14:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j7vZ4KBo/1ZD2VgbTPdjLEd+fD6bBbzCepVAyBzkbDI=; b=J957m/aRNRP5Scc34b1yTG0Xan
 pFgh3UJxAmP2W4RdSRSHj5ZnN8Ln7J+A+xeDeW4nVtaL+ZsvZqYwGq5ayEQ9pE3W9L4mUkybU5Wh5
 t0xt7V4Q//8weSIqFbicCGNG3w/DXN1T+MGAIM2yHjcGkyDSzsa9H0xtJh61F6hiQwhI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j7vZ4KBo/1ZD2VgbTPdjLEd+fD6bBbzCepVAyBzkbDI=; b=STr43UJ5m8jX7s3DZMM8u4pgTu
 hlBvbxpopgbOV0lPkCW6JxqWptB2+97XehJW88gax4FA5UNEvAABk5Sl35GaCow7Em2VIMGR2x7mR
 NV2x40nRlk5cQaETlBc+pJae87JW69KayaX7uwOBhI1zv7/Z3i8ShsPGBgWqFOaE1ovE=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qo2mz-001Q9I-VO for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 14:23:54 +0000
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3948ixCq008667; Wed, 4 Oct 2023 14:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=j7vZ4KBo/1ZD2VgbTPdjLEd+fD6bBbzCepVAyBzkbDI=;
 b=P7+oWBweZiUyYNWpYUxhmWbZCsFeUyWby59A8I/wInAn+0zYWW7JrlwXnwFcmqa12+4f
 L8sow7wgZCRiqqZmitQsuk13eCjxgHdXTb+Ey8kkxf3NuikF9f9JJk90xt0mk8vKqx5r
 mqPoDeuTM8tFG1pdymnu8UmstRM2F51zaqAqt9VJTuG6gtwLk3ULqZ8o40xwqjSz+ww7
 xV0OUfGVZP2HqlDqYOngAb8KRPxNCedUtVFtkwrQV1KdOD6MNxoI9ZrTf52PLE59CEF1
 7vl3T7+P1na7OJHdwbPqkyH6Z4NVJP1WXAqXonXLc6ZGPWzQoea/tcrd//XkDUhnMQKg /Q== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3tea92783g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Oct 2023 14:23:40 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 394DBZFB005814; Wed, 4 Oct 2023 14:23:39 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3tea47p9m3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Oct 2023 14:23:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kjXpmI7t3SGt/hqi9GitIzIXi14qSWGsr4YumRC/NOcFOfXk+YB8xOe0KhZda29m6VjBHjGlEYphk+6GeDbhlxq1DwFBwXzN9LlUCY6c0CxYWBOL8f2dYaOQK9ci3gFzHMvb7CemhXxNxYv5g/Uy72hn0e3IL183iGXsNMg0PbztWn0Jv0nv3LL7/9qBTTXv7BSjJX/IoGbBleLTkUR0qtIHgbmEAPyvIoESmtkZXJqz/1y2/jSkIPqNHT+G7whL8fpvTbt1FDKaKcBJa3cspCpoQgml7d/1KaVHS3OCWlEQDIzS6vlnjWIBDYZyUvg+RTTARmag+F5mZK59E267vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j7vZ4KBo/1ZD2VgbTPdjLEd+fD6bBbzCepVAyBzkbDI=;
 b=YxdEgAkwsYgaQ6jjtyXlULyeY8pUxTpGS6omNS+cqU80xNR43Ay/ntnAjws/FoE30Kxd7bdBLmSIUT/+7L6YjVOGdUdDX8l5CPApTTOeOSkMRspVTo7ByMct8PSevG5lhohxZ+e4JyKq8fbXGmgLVPhEeI/eIGUT5wcrg6lj7IjcTCdk8y6+M2NmHtKgxPY9+Jbqgo+pXHTrt7uwlNyWly1p9Ms5KHYbMkioJe7hsQcVHDxRgUZHsWzRL1yYGV+RCgKuP+jurtAiYhunEStQ2y+8CDxkIQ+MKHlmZY/JCXXT42F+hP+qUMvPv4WRnlyns/EYHxcrdhKSUhGEUMdLUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j7vZ4KBo/1ZD2VgbTPdjLEd+fD6bBbzCepVAyBzkbDI=;
 b=xk4MKpXu++vRIYxQpjGhpWSZWmOK6xrwEnwvjEGGPjARgr7tbPSu5L+pYQ2U+Ju3XdCd8O+KhFvRZaCzY5t17rkdxUGNUSl43bh990Gz/Pt0sjIfzoEPfsfc2i31utuXVk2BSmmWsbipGbDad5qWeDQ1qocsHmhY0WHdBFrCzro=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA0PR10MB7301.namprd10.prod.outlook.com (2603:10b6:208:404::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.31; Wed, 4 Oct
 2023 14:23:37 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6792.024; Wed, 4 Oct 2023
 14:23:37 +0000
Message-ID: <b0fcc552-a5b1-44cc-a3f6-da992249acb5@oracle.com>
Date: Wed, 4 Oct 2023 09:23:36 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Manas Ghandat <ghandatmanas@gmail.com>
References: <20231004074040.12233-1-ghandatmanas@gmail.com>
In-Reply-To: <20231004074040.12233-1-ghandatmanas@gmail.com>
X-ClientProxiedBy: CH2PR05CA0007.namprd05.prod.outlook.com (2603:10b6:610::20)
 To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA0PR10MB7301:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f5da594-426c-4366-6259-08dbc4e57fa4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2x1THN0cUMrWjlUa3VQRWZzaXFkbE1YMU4wa2V3cXRKWllhWkNCazJyVFFU?=
 =?utf-8?B?UHZYNEpDc2xPK3JRWHpNRGt4NlhHKzFuTVMyMFZRSlV5N1hwMmd2RVpUNUg2?=
 =?utf-8?B?MVJ3VURaWXM2QUhvaXZueGJUZ3JvZGY3a3NkSlU0ajBERHpyTi9nLzF4RjBV?=
 =?utf-8?B?SmpuRG1qSWpqNU5xMit1bXVMZU9YaVBQMThkckU3WXhhc1NtVWZjZVM1MFZV?=
 =?utf-8?B?K04zejFDaDVXRHdYTERnQ2srS0F0TXgyNDhodVhaUVhPeUlVZFNNQm1QRWk3?=
 =?utf-8?B?eU5kUm9pOUtBVnExTXE1U00vRlFNUm9WZktaOXBaWE5CS2F5NVFBT3crOXNM?=
 =?utf-8?B?dW4rRDYrV3U1d3ozVXlyR0MwY3lvZWZjUGJXd1RtaXB1Q3hkb09raWhwWko2?=
 =?utf-8?B?UHRXTEVCaEkxYXg5cXl2ZnFjenBIOURBZjZMZU1FaExweHA1d0JGT1prMUJG?=
 =?utf-8?B?MFIvSSt6TTRveHNCQk90SnFzdTJSdGNuL2VBL2xkQnZqTFhTVjl1MnExU3NC?=
 =?utf-8?B?RDlDMDZpMU9jR1FiZ2U5azdhQ0dvU1hqZHRVVHVMN3F0SXp0T1lJdXAyRGo4?=
 =?utf-8?B?UW5Ec2ZlSW5ZT2dQRVlMWWludXJ5WGZHWkZMWGRmWTJGZVJxUHN2Zy9YRU1t?=
 =?utf-8?B?R3BZc3IvVHdENjlobzRmN2ZLa0RiWUZPWk8rVkVidGx4bmtEbVZjeSs3OHd3?=
 =?utf-8?B?TVRMRUNQeVdnajVtVXdlMmpCSkJ6Qkc1eVZlUGxtUDYvYnFac1hGSk14dWJx?=
 =?utf-8?B?SDl6QnFtTExIV2FKcWZmS21pWGRDTmdtd1gzd3VaMFVnTkF5Mlo3aXVURVZS?=
 =?utf-8?B?bkhVMUpCZytnaTl4aVdIb2FldXROSnc1QllJcHRCKzhMbzFJY3ZVYUVBVW1V?=
 =?utf-8?B?a0hYMmVlanFBbzdRM0ZRZGVVYzhHMWNyWG85ZlB4R2V0VjY3TFh5c2phTE9h?=
 =?utf-8?B?N0g5bjVBYndrc3JHTkdMOWx1dnNIRTBRM25sZXN3SlpaK1cyQ3FBZTBURzFT?=
 =?utf-8?B?eGM3cEJ4SUE0dXUrcElQc09ER1FVQ1J3bVc4NlpCbmF2aGZIcWN5aytSWSs5?=
 =?utf-8?B?SWg5eWx5ZnU3bS9GU0RhTU5vTlpzelNML2hMS0Fzc2gvaVNWWEpRaGFodTIy?=
 =?utf-8?B?SWZ1RHBiNCtUc05KZUo0WC9tTHlJRzd4QVVNT1R0Yyt6Sk8rL2hmVURCTnRO?=
 =?utf-8?B?dGFIQ1RXVmVINkZZYlFGQVQ4RzVCcFZpSGxFY0UyK1JhREk2bXQ0Vno4ak05?=
 =?utf-8?B?a25WSkw2M3pjSkdNK0x3OGlsKzB0b1VRUGdlZWNVL1FYemtIM2hmUnFYUHFN?=
 =?utf-8?Q?NDCorJ6U6Ctpc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(26005)(6486002)(6512007)(6506007)(83380400001)(2616005)(966005)(4326008)(5660300002)(2906002)(8676002)(44832011)(66556008)(6916009)(316002)(41300700001)(66946007)(8936002)(66476007)(478600001)(31696002)(86362001)(36756003)(38100700002)(31686004)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VE14Z0svZ3Z6bHErVjVXbjRRS0k4RU8zZTNrcWN4RS9XL2d4MXdVV2VHNzFJ?=
 =?utf-8?B?NkNKK3Y3OUd5RGM1Y1BXb0hWUGo1R0lQS0tKVTJsZWk4K3lERnAvcHBYMEJs?=
 =?utf-8?B?bklBRURrLzJLQ0dHajMrZDRHaGZrTmV5VW1VZ0kyMWc2NngranNTekgyME82?=
 =?utf-8?B?TGhUa3oxM3crWjdhV1YweEtXK2lHTmNWZmpwa2g0b3cxOXlkaHdjMkhBdkdo?=
 =?utf-8?B?Z0Q4YW5VTWovZ05ZdjdzYlROSEUwZnlISy9oWTdjaUlLc0JFMGRxVFFZRlZG?=
 =?utf-8?B?cHEwOG9BR0lVUlhRYWdlZGVwT0k0bzdNQmZTZDh1ekVzWGJuMEU3QWVhY3di?=
 =?utf-8?B?eXRYaEZIelVrTTRBSjM1dVllNzJ0anMyTjFEWWhQaXlhUEgrRlFMYWJ4dStz?=
 =?utf-8?B?S1RoVmR1NlF6eURQRW5hdGt3bjVnMDEwQjROSGsycC9QNStMbEZCUWlReUdC?=
 =?utf-8?B?U05FM3o4a3FMMzEyelU3OGFvUmd0c0s5V1Z5UE1HYWNNaFc3UnR2TVNDcENp?=
 =?utf-8?B?Y2dtRGluMjVjdGhWcDY1VTEyUHRldjZqUDFqR3dkMlUvZmFGUmdBZXVENm5N?=
 =?utf-8?B?ejBwaFo5VnE3Qk9oeWsxUy9DZ1lLZk9pN3ZQd2lWV2VLNHJGeWMxekZ5OHVu?=
 =?utf-8?B?R0JvaVZoZDdDcEsrdmdUVEFGVDBvbU5mM3hRWnd3eUsyZlMybCsvYllaZ0JB?=
 =?utf-8?B?cW9wMXZVVjhOV091aGNJTXFjNy9MRGZIakhkTmNnSVJYaVFQeFFjbjV1SnlK?=
 =?utf-8?B?T2xJOXhjMHFPT0dmQ3hyc0xJdDJTSVVMNWRkM3RMWEdLTWtxSElwb0RHZ05N?=
 =?utf-8?B?Smd3TGlCazd3dWdUWWVCdU5SZFp1azhCcUxaY1V4ZVV2MTZDTW15b0pORWdw?=
 =?utf-8?B?QlNoNnBic0taSEprOTg0SlVtUzFzY0REdzRQQ1JlL0tJSitzWDFRQ01YcURM?=
 =?utf-8?B?Wmh3d3FWUEdXZ3h2ejZJS0dmM0FSS1B3Y0luVVN5YnVJN1RCZUJsdDkyZXFL?=
 =?utf-8?B?UzJ3ampLemk4TVIwUkZnekhYRjBGbmdxd1E1YTRZNzZpTGJnZVN4TmQ4bk9E?=
 =?utf-8?B?WTNlYzdWSWkzODdRbVdsVnoxWlBjQ29jVGRJK3dPZ2xYUis4Sm9TNXlBand1?=
 =?utf-8?B?elcxdUdaYkFiWFZSanEyN0Z3TTE4dXVmbHhaQ0diSW1xZzhaYy9salN3Qy9h?=
 =?utf-8?B?V2VXUGFsZ1poVWtzWE85R0FMK0UzV0p5SUJ0VE9zQ1dicmFrLzkrZ0Y4aEht?=
 =?utf-8?B?dHRrTTE3NEthZDNCZVQ0ZE1zZUJlU1RKNk44dmRHZ2FUd2NkdTF2NHFySGo2?=
 =?utf-8?B?VWpvSkZxTXRXQzBsKzVxTmpaR1ppRDkzeGEvU3Z6bG9FRXpaSyt4SFBUaGww?=
 =?utf-8?B?eHp6UDM0dWZMcldiVkZyN1M5QTRnNGpyemZEOVkyY1JEOU9UMTNiTTYrZTVn?=
 =?utf-8?B?Qy9VVUZpdGtFQkl0VFIrcmlwUXpLVDR4d1JZMVhnUjVrYUd2a3BxMDRpYVFU?=
 =?utf-8?B?ekpmV011Q3dMY3FkbUxaRE9wNEZTa2VxVkVMVXc3QnlEYjFGbjd5QWRCOGlT?=
 =?utf-8?B?SHpSMDN1RzNYMkpLZklRYnp1YTlmNWE2b3IrQ044enRSelhZWjlWeU1tTy9G?=
 =?utf-8?B?UTdIaTY5SGtwSXJVbUdZVmRSYjlJMklXUFZDNW5vUEhLRkFGWGt1SkxiYkhp?=
 =?utf-8?B?ZmtXY0FJbVJFRUp3MXQ2UzV0YWRRUTF1VzBLMmFaTEcveWMwUll5cXFhQUMr?=
 =?utf-8?B?cUJvVnVSdWdWQ3BIeGlDV1Y4ZDdHMUF2SmdBaGhta1k2a3daenZRVVVDZE9h?=
 =?utf-8?B?Z1BIMitrczBhSGtxSHUzUVpQWE9BWXlwQUV5aUlNZ3BkcXNYZjBWa2lVbUhr?=
 =?utf-8?B?eGdjQzZnTjFZRFN4VzFYWHlFYVFIZ0tjaVdOQ2ZrVnI0VGJNZDZpSkRidk9z?=
 =?utf-8?B?WDBqbFdNQWdBa055Vk5PZ0NjVDhPS21sdUtKc2Q0cy9iZzUvRGQ0dHF1dnll?=
 =?utf-8?B?ZGh4VkxNSnRJVlY1WTl0VnJCQWs5K3NmSXUvWVBlOHorWVh2cTVSNHVWTVRU?=
 =?utf-8?B?VGEvR3Y4UVhMcHNEY0lCRm9JclUrVnJXdlVNZEJ6Z1Z6SHFRUHJxK0RGT21n?=
 =?utf-8?B?SHRIZGgzY2s3QkkxYXBDRStXVkFZTjBkZnI0K255V1l1Vk9lSFQ3NW95YkZ0?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?K21NRXRKbFFJSGlmZjNjSmdYSjFvSGRzeWpWeTBOUHhQTWwxN05hQk10bEV4?=
 =?utf-8?B?TXRXck9WSW9wTEU2Q2lNTWt3Qk9hODByVE1qNjR3U1JoaDdia1NIQ1IvZ1dv?=
 =?utf-8?B?TEtrbnlmR2VtdXY5cXRlZEg3bDRieUFZcXFwa2VNR1E3emJEMG05a2I4eXdv?=
 =?utf-8?B?T25GSzA5WnBrQU1JS2hoTFNjRzRNa29LUWpWMnFWN1JlcTdZTEJQMnRoOUNo?=
 =?utf-8?B?STliMFBNMFNzQUVXS3Q4SUM0S0JOR2Rva3JEVjloVmJOWDBoV094Ukx1VUZr?=
 =?utf-8?B?LzEyNnBLOFR4cHpLS2hpMzhjdWRqb1N3WnpWSEtnU09mRkp3TVdHc3ZNSW9M?=
 =?utf-8?B?YUdrWW16M0pndUNRNlZvaXZ0SWxaTnJRTC9aaFM1aHhpSThwaExqK2Nwbm9S?=
 =?utf-8?B?dGhmM0psR0hrMGtNalJSZ1ovYjgxV3NQd0FzT2l5c1p5a1dXTTJtVGRkcjRi?=
 =?utf-8?B?UTU0a08rZ1JyUUF1SVFieGkrajQ3Q3JNME9BQTR3eStlRHFIYmExVlBQVGpp?=
 =?utf-8?B?WWlLY3cxNXFVa1dtSUY0SlNFZ1l3TEw5cVNVRE9pSFJ5cTlUNUVYOVdkUmxV?=
 =?utf-8?B?WWh3dVZabXZGcVJtOFd2N2pBK0FydUxGRWZFMjFZeG1PdlhaSXVaaWE3Uk0r?=
 =?utf-8?B?SDdzeWpxc25sRGlHcitLcCtpRzNkSDNDTGFhMC9SeCtIWDRRRnkrRW9KL0ZV?=
 =?utf-8?B?aHJHdTd1M21aTnVIcFFuRlpwL2dadGlVSVU2N21sSFdmTWprRENMWnFDYjhh?=
 =?utf-8?B?WHVUdVdHeklKUHBFTENuZy83eDIydVBEVUdNaU5uckxWZExMWmZJekFuRGFW?=
 =?utf-8?B?RnpjMHBzU0lQWTUvcjM3bG1ETjMyUzlyTnN3T1liTmh6NGh4YzhpMGJKSXRN?=
 =?utf-8?B?MHRPM25HbjhycW9WNUF1Z0E5ck9CSXphZ3J5WGcxNHFLOHhwZUNNZ0hjOXlL?=
 =?utf-8?B?STFrQ1d1eTBQS2Y0RmtXSzUvV1oyZjI2ZFQxcjY2QUhRZVZJM1NUQTZNWVkv?=
 =?utf-8?B?V0IwdzhqTG9Ua05GelJBQmI2NDZTY3Z6WDZVTzVZUlhqY0dON1MzSUtsQlRO?=
 =?utf-8?B?eGJnZUczVFBjWEU2RG8vZUJVK2VIdk9lUGlnc3pVOWpTTmNEWm14QzhwTDlz?=
 =?utf-8?B?UzVKSXcvenplSC9tZ3IvZ1FrRm1iWk0vMjg1MEhmb2ljTkd4Ly90aFNEaFI0?=
 =?utf-8?B?L0ozQU54em1vbFpUZlVOR25lbDhsdkFoT3lYRU9PK0dQR0hYYjJlVmhMWFlT?=
 =?utf-8?B?OEVacEpTcDU3T0lnK2NBZlR3QmFKL2pxdW0wUFM4NnVqMU9vZjRxYjVRcFIw?=
 =?utf-8?Q?osfeezO/kqk7Q=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f5da594-426c-4366-6259-08dbc4e57fa4
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 14:23:37.2317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vyE335OK1s2JJekjjJUO57F5MPbHb41ncR6SsQyPcCFeXnF3qZwXPyGm70dic7kGOw5qx9nKjtU/gJf14HOngn0jN28g74e6RIDoyf/5qWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7301
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_06,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 bulkscore=0
 adultscore=0 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310040104
X-Proofpoint-GUID: mFwQzgAitzGw6JAqF5WKUeP0uGL7u3N-
X-Proofpoint-ORIG-GUID: mFwQzgAitzGw6JAqF5WKUeP0uGL7u3N-
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/4/23 2:40AM, Manas Ghandat wrote: > Currently there
 is not check against the agno of the iag while > allocating new inodes to
 avoid fragmentation problem. Added the check > which is required. Applied
 to jfs-next 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qo2mz-001Q9I-VO
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: fix array-index-out-of-bounds
 in diAlloc
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
Cc: syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/4/23 2:40AM, Manas Ghandat wrote:
> Currently there is not check against the agno of the iag while
> allocating new inodes to avoid fragmentation problem. Added the check
> which is required.

Applied to jfs-next

Thanks,
Shaggy

> 
> Reported-by: syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=79d792676d8ac050949f
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
> V1 -> V2 : Added check for higher bound of agno
>   fs/jfs/jfs_imap.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
> index 799d3837e7c2..c0cf74e7392b 100644
> --- a/fs/jfs/jfs_imap.c
> +++ b/fs/jfs/jfs_imap.c
> @@ -1319,7 +1319,7 @@ diInitInode(struct inode *ip, int iagno, int ino, int extno, struct iag * iagp)
>   int diAlloc(struct inode *pip, bool dir, struct inode *ip)
>   {
>   	int rc, ino, iagno, addext, extno, bitno, sword;
> -	int nwords, rem, i, agno;
> +	int nwords, rem, i, agno, dn_numag;
>   	u32 mask, inosmap, extsmap;
>   	struct inode *ipimap;
>   	struct metapage *mp;
> @@ -1355,6 +1355,9 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
>   
>   	/* get the ag number of this iag */
>   	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
> +	dn_numag = JFS_SBI(pip->i_sb)->bmap->db_numag;
> +	if (agno < 0 || agno > dn_numag)
> +		return -EIO;
>   
>   	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
>   		/*


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
