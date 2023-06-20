Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 28074737604
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Jun 2023 22:26:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qBhvS-0006O8-NV;
	Tue, 20 Jun 2023 20:26:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qBhvR-0006O1-8z
 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 20:26:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8PaFQZmpiOkDHkxygNkd8SpR2UsL/7MFszQITCIeINw=; b=caElg8nXJG1lEX5ldqzxo8tuU8
 d1iKNh63XoB8GFYjkroMTdcJJAsmzKD3/9h0wkgBOrBaCyfmRsR/VxWBPSxIFnecJeyBUa3gSlVaz
 /ZJwkutzRckWOJMSQVU2uQamV2CpNIvfkesLzmhdUqIfEMT0YA3144Dvr/YVrhSAlHp8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8PaFQZmpiOkDHkxygNkd8SpR2UsL/7MFszQITCIeINw=; b=XMY8bZB5fj8eIWIh1Y5UP0bZT1
 4KjZScxkn1mIAPhe5gYPtubfcD17xIY4Uq9jBmpjnpzQirEGRKYZ92ExmA/KNlpcbSMvxkDC1fv70
 cc664wh98CJKCe8kASqpbrNYIONyHxHqlckBGqfBIlQD4y75ko4z7FYzjewfAtlkN30E=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBhvK-00A3Ih-5r for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 20:26:05 +0000
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 35KK8ubl000646; Tue, 20 Jun 2023 20:25:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=8PaFQZmpiOkDHkxygNkd8SpR2UsL/7MFszQITCIeINw=;
 b=Ue/tAJTXdLupIAqLN9lxCMjPlPuJ6h4dH99RNWLrNELJE3K/0oMTxIYgQKhpB1lReR5M
 C3IYlHPkOwBubBZFI0s2nzxLUEykKHJn9G84pz0BitNYwkIwRTZU3xTUYdTLqbjjc1cE
 7RsRFYqFPtjZyS/S7f1uBGnNphq+RpZbCsKd7MjZc+wGsYjDszemnVwJOFTDuulukxcH
 ztEu0yIAhXAbcezD9QzlkI63nheimGFwV/3z+6VD7hN42j/aNJ36GnU7jK4T75i3Xwfi
 VpRZHHGdwn1QwWAyeq7DKjp9ytDOg7z+HYaVFgjb7dIRfO9btdwjVcFbMbxdsWprlM3f Ew== 
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3r94vcntvg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Jun 2023 20:25:46 +0000
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 35KJb9So032944; Tue, 20 Jun 2023 20:25:45 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3r93963mqw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Jun 2023 20:25:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lTPcvZTuvFf1dE4U6nbcwKuZoDIWyfiMAKx9g6s/ndEZ0BI3PrCuUZemikUK4MThv7fpl7pQqfdY+lbUPwY/nn/t8iypCK58bEyfPolZ1qs3/7viF+GQF8PXhYvRe0yzW8JW7uC//bEJVbPWsCdGF22DS89O/qtfXZwFBRtT4Op0j1lyVeGb7rEkCiEWL4+8Ums+heLADMBdytZHsxcwpVT2jfZWe1lsyF/M+F2VbObezN/XENc0CpkCnCaw1qa8G49zrZ6RGCxYqdfffXtMUWYhr5utrgc/Bl7EAwBLWwPci4ro3g6/yP/Q+Tq7ijkn1oD6MgkilEFCndv9H8+Uaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8PaFQZmpiOkDHkxygNkd8SpR2UsL/7MFszQITCIeINw=;
 b=iQzZLSNre2CU/I51O/evq5fPbs72YM3nzMpCAjQkHmXSGyU+d4a+QZn62SDTvO2Roq2TAq2eQk/DUYABm7GskYbe3Xngmp3v7pjm2VkhT/tUD5iLRNzkOmBL33VJ0nWp2gxRduGl6BKNa38CpjogfFdnCEZlt9Et7ORGUJRnYmfte6KDoGwMKMHioEjqZB99u2kqwnx4ioWuDh3m16LnOY+2i/IYIj1huRzrnSSsdnHQv/LMbrqi0y7TvN+9iXN4qQjHxJsekT76xSIhFkIiVJNB/7E3dWDiLoUwVkehvsRiS6Ok0IONlnftgjL3UrIkDAwMV9v+I1ag99n6RXxcqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8PaFQZmpiOkDHkxygNkd8SpR2UsL/7MFszQITCIeINw=;
 b=IiLOAIfQOQ2Vktz2vCjYUEGwAWkYaahvz/jRud8hMZKI+obxiMq2eXVV9PJkFr8HDFb/I822k5Gp/RlKlvBsTjv1fYvadz4ggP7GpZWgrI3tNK7Dy5v4JQxY2lSftatAh4MYZBQtU7wDxIxXcggUd2GkRDdFLDbQ+QchUS4q0Ko=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by PH0PR10MB4583.namprd10.prod.outlook.com (2603:10b6:510:43::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Tue, 20 Jun
 2023 20:25:43 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96%5]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 20:25:43 +0000
Message-ID: <3bc70da4-efa0-462b-8dbf-0569fc2c0275@oracle.com>
Date: Tue, 20 Jun 2023 15:24:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: anupsharma <anupnewsmail@gmail.com>, r33s3n6@gmail.com,
 mudongliangabcd@gmail.com, liushixin2@huawei.com, wuhoipok@gmail.com
References: <ZDla2Nuyq2QLdo96@yoga>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <ZDla2Nuyq2QLdo96@yoga>
X-ClientProxiedBy: CH2PR19CA0016.namprd19.prod.outlook.com
 (2603:10b6:610:4d::26) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|PH0PR10MB4583:EE_
X-MS-Office365-Filtering-Correlation-Id: cddeeada-2dc3-489b-0d84-08db71cc6d32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xAMZFHUg+WYIsNoVNUDTo4Y/G0GBNo0Rf5UZWfPdO06mlb5SbOCNpNNAzlHuKSwZI2Ph2B1s41ViTtAXU7rrwpuN9e7XoTRjDnWWmjb9ajqB9MJcgr5YRRC6ykYrsP6VpdYS7LTfKCeeGLsXPvpkF9BdBI7huXimbsozlLRxiQDWIvi1mvDxKMwwafU207whyFdzQrXaAtua+VMCm90b18bnYhGxVVWbB4SmSmlWl5GDN0aWhDKL11ObRUuNrmTpF2cH4Z74rAuQ5QjtBrCZWJ8/3f/wSXpOHRKs1VG0P9qjYoijRak5ZSUE8AiTtCoDNXc4n1y6lGqjtaQ6Fkfg8Dc7G2tu0D0aN+zZXrpd3ecS8rNMGm6MP4KYXMYccU5ubyNKYeRvtJz/i/U0LR1J92lhFuQ+1CNHEVMW3AU/AMxqGIGpRKVNw62rbow+jAtt2RrXSQ+X4GpwYs+iJ0ipofZ3EOie7RROjrlAuQQOp0GB/Nys3xpihTQSQctnK41Fnfh+96rG4Lj/fFdTs8xS0l3RrhV7iNNDgSatFamO+Mu+XPGM1t4OUxv0yjuzBNvV2lbrB+988ktbWhx/jlqmCCtdBaSoTCaEAEJePL6QZSZMUxz96NgBfeut36s4VmJ324PZsGJTqj9R3H6XhQ4nOfkgUw/qWqga1cJwZ7QiWQk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(366004)(39860400002)(376002)(451199021)(83380400001)(6512007)(8676002)(8936002)(41300700001)(4326008)(5660300002)(66476007)(316002)(66556008)(66946007)(2616005)(31696002)(36756003)(86362001)(26005)(186003)(6506007)(31686004)(38100700002)(6666004)(478600001)(966005)(6486002)(2906002)(44832011)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnE3MWhZQmg0U3FOcldKYVV1c0RKQzNnakJ2dnV1K1BTUUc4Ukp1SXJtUG5C?=
 =?utf-8?B?emwvZi9uenNvVWtQem1abVZTWnhxM2dyTGZ3Y2JMWHJXWWVpWi9LNUsvN2tr?=
 =?utf-8?B?NGxQL3hnRHFjSlZNR3NqUWVwUXBSZXdwME9ISm8rc2RRa2d6RVErejZuUkxj?=
 =?utf-8?B?R1A1aENUVGVvWE9JcXgzU1QwaTFvU2c2aGU4Ylp4Y1h1OFg4ajdwQVhXejFu?=
 =?utf-8?B?V09yZXNVb2FZei9wWHgyQ1FkY0phakhSV1EyZ25yZENnQ2ViMG5OMjVXMWhD?=
 =?utf-8?B?QTdML0RpYTJydzBsNGIzR3VmQ25MN29UeUYzdnZ5d2RxSVp4akdOVkwwV2NV?=
 =?utf-8?B?MHUrMUsrWThULzZKcFNiZUxURHJTSVdwWmFJeDNyOVdWK3lsZm43TC9QRXlx?=
 =?utf-8?B?a3VWc0FENS9kRFQ0TUI3VkNybnlvc1k1RFI2SitwUmE3S3RpZ1FFZUZxSUMx?=
 =?utf-8?B?OVMvZXBhQkkxeE04bVp6NFhiU0g2akxxL2t0STVyWGV3THhrNlRoeFc4dkYy?=
 =?utf-8?B?R2hGdGs4Z1R4b3doQ0VsZ1NSdy93dlVkaEtmN20vTE5QZTU1QWVmVWxrMzNq?=
 =?utf-8?B?NnJaUUN6cS9paUswUzRBdlJtTXBlMDl5TlRtSVZMM045QkFmT00wd0dBR1dJ?=
 =?utf-8?B?WURTRDZSUEpYU1JsUzFoUHAraHVhSzdJTW92dG5sMmFsTkY3TlFrcTJIUDRw?=
 =?utf-8?B?V1k5Vk8xaUxWdnJwVTRiUHhOZ0dVczlRalJSTi9PeVdhUVduZzFPZGlnTUIz?=
 =?utf-8?B?UFZyNDVSZ3dyMEFMZlRCR3RSQWprT1BYS1VJQU41aEU4TnowdlJPbEpCL0FE?=
 =?utf-8?B?WW03TFl4NXY5QVIrVWlWQzhBLzJjdExYZlo2b2cweGNIeGdXMjZYcE1JRHNO?=
 =?utf-8?B?Y1lIUmIrZmdqRVFaY0k2NkxBYWpPRnFTYnY0SFZ4OUJqR3AzeCtXRUk4NmJF?=
 =?utf-8?B?cTlhQzRSK2Y4NDd1M0xMQTRhSHZRTkNOSEN6TncvM2FFT1lPQXpTNDdPeXp3?=
 =?utf-8?B?akhoMStxcm1wTEJsM3Y4VHFMbVFtWFIrbkNIUC84WkJaS3NTbkVOQjRicEJ1?=
 =?utf-8?B?ZmFwcnRGUVFQRkdURDFyaDlJQzc2OXhFMnIyZUF0RHZjSnhYUm1pWnRkcTRh?=
 =?utf-8?B?SHU3TGMrem5uWnd4aXdqaENLZ3VRcFVpQ0lTNThtUytVSVN1QWVjNzZuWExx?=
 =?utf-8?B?Vkw0TkdndVJvRVF6TUxiZUxpT3kxSjZ3Smk2bVhXVEZLSjEvYUlNa1RUakZ1?=
 =?utf-8?B?SHBROEc0TUpNelh0STFndEpmV29wSEpvUFFxbkh3QjRBRnk5NVMzK2RiWW5N?=
 =?utf-8?B?c2s4K0RYaXZYYXFjWkw2Q1BNY0hXbmpSZVo3bDM2aXNTd0ZJRGRtKzQwckRP?=
 =?utf-8?B?ZEVHMnZReGtxY29scEZ0VkY0Y2htTXJ5OXJWbHdxZ2JKWkZFOG5TclJnQmx0?=
 =?utf-8?B?dmdDR2ZuMkFtN05oUmdOWjY5SSs3clFOemY1OFRTNk9IT0s2VGVadGNrM1E4?=
 =?utf-8?B?ZjRIc25aM00wcmxpZzRoRnBVVW9XUzVrZU1wb1hqVElYMHRKSXhFTExVeHNj?=
 =?utf-8?B?aTA2Mk5GZ2hzWnNRQTB0U0ZHSGJLMHlVekhIYmJod3RPcFhKcERPSnpYdUpP?=
 =?utf-8?B?T0k2ZU9tK2JSVGIxMXZJcmZBV1ZNOVY2OXZPTVpobnhKNGYwU0VOS1IxT3JY?=
 =?utf-8?B?TWE1WDRlRDJkd095eVNwOEtEZGdSZ2ExZnR6TXkwY2FtcXM1cXRVWVh6U2ZN?=
 =?utf-8?B?NlhLd1FEOHZzNVF1L2pLSk4vWGEyQStkd2k5VlA1aVBDQ1dla3Z0ZWc3UlFq?=
 =?utf-8?B?dENSaTR2dVlOQUwrdkV3VWg0NW1UMkVPdHFMYXU3bUxuTVFTSkQxU3RIc2gv?=
 =?utf-8?B?Ykx2d1FzeDUydXBFWVZ3cTZFZW5XejlsRjFPbHlhMS9ZQ2t3aGU5WUJCa0h3?=
 =?utf-8?B?anFPaXdWbjcrZ1d2dnJEcHFVQVhHOFl5VzkwYlBrL252MGpVM0cwakZSNmF1?=
 =?utf-8?B?cTVkUUUwSzE2aFhySE9LVHJEV0ZWZWdLWFF3cjJ6bU9OaGZZR2k4eC9UN2RR?=
 =?utf-8?B?Y0hJM0hCWUhHa0pCN1k4T3IyMWg5K0dkTHc3QVNBRkdvUU8xZzVuQnpVQnUv?=
 =?utf-8?B?cDBqTjcycVp5NFB5VThIL1V5UlVvZXRmeW9JV3l2T1VGU0dhV2FEeXh0QnRH?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?aUJFcjhYeUlEcCtTUXloWTdic0p6UnNNQ0lISHV2cms5TTdmVkpRRVYrV25r?=
 =?utf-8?B?RStWdENjdW95VDlVc1FzTDVWY2lRbDN3OWt4dktIOS8vM3lSelY5SHhjWjFC?=
 =?utf-8?B?SklycWdnN3J2MlFvNUJpWjNYcTNPdXJZQXM0SDRNeldUdjFEcDJpbHZnQkMr?=
 =?utf-8?B?SGVESGpjcGJmVDd4cnNDV21Hd0dMV2JBZ1ZZRUxFNyt1cHhDQS9SYWZhUmxF?=
 =?utf-8?B?bnBXbGhsTFY4OXBZeitpbmE5R0owaGxDNnNJczB1Z3ZTODZJeXFqaTFXLzZj?=
 =?utf-8?B?TVN3T0Q2N2V0MzRqc1VHOGJWYjNSNnpwOGRTcWFiVjdFd0duaW5pZ0x1UlFP?=
 =?utf-8?B?K0xMeEF5MjJBOW5DdDl0VzZiQ1dHcnhRU3V3dExyWjRGVkpBYXppNmpVVW02?=
 =?utf-8?B?dHFacHU5Z2NWM0QvTTNZVENid3dYOGNqRjczb3dJR05TQzNyYk5CQVk3QjAy?=
 =?utf-8?B?NXlia2srWXFyUUtHRDJjaXhaZHcrTUtTY3dxSFoxM0hkMUpEazVBMVNmYTZH?=
 =?utf-8?B?MWZvek9rd2ZjZkdhS2ZEY0Y2alg5RU5rWEVmSGFUSGhIRzY5M1JWNEJMbklO?=
 =?utf-8?B?N09VSDhxZkhPd3Q4VG9GZTd6ZVQxMEVHT0I3aHZjNm5DdkZDMStyRXQ5S1J5?=
 =?utf-8?B?QUJxSkRycnNlYWlGRlQwL0hjWEppUlFQU0xTeDViRE1nM1V0T0ZnWHRoL1Mv?=
 =?utf-8?B?MTdPSFE5dlZuZ25MYmhyNTJWeUkvVkNvTk95WUYzdDhEY3ltckJDN0Y4bVVH?=
 =?utf-8?B?U1g3NlJmYUhJcDJ4VjlTR2tEQkZodlBsT0tGUE1WcEhCNHdGOFczQ2FXLzNj?=
 =?utf-8?B?ZnBqUXkwL0o5UUZLS3U3R25mbDRDeEF5M3psTkVKVVJJMEZKdkloem1Gdndu?=
 =?utf-8?B?c1dyYkwyQ2ZtN21OazNLeGUvOFg1OW9OYlkwTmhiT2lCSVdWcDZHYmNCbVlo?=
 =?utf-8?B?UGg1SWprazBVVzdkOVJsMDlLZjVvV21JWVQ0Qy93cDlBcjNSNURwWjFXWm1P?=
 =?utf-8?B?RzNNczZ2dktrb2R6b1NKWlY4M1JnSDJ5NUxSOHhienNkRjhEdUJtK0dvS0tD?=
 =?utf-8?B?eWgwbi9WLytDNXhaU05SZkVDeUdSZUx0bEIxMm9HbEZtbGhMZklvQjExTXIw?=
 =?utf-8?B?RzcwMVJFWUc0NWZRNmZkaThxWkNHM0dZWitZNkxPZnlhc3JWcklFenhvUlhO?=
 =?utf-8?B?Q05PSlkzNVlmOHoyWHJMMzNFVE01SWVYbVBCUkhIZmtyL2RFYVRiUmkrRjJZ?=
 =?utf-8?B?UVRUcnI1QVpHaGlvUFFWYWtoVHRERm9wUXRERTRYQ2ZZVkh3YVRqU2QxN0xE?=
 =?utf-8?Q?x/pHVaENJzrszB4IRO0OTXBsNRwYKqZ2JM?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cddeeada-2dc3-489b-0d84-08db71cc6d32
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2023 20:25:43.0593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pJ03eKlN2vlQVNE07VjR/+yQO2jr6tKWrWEfZCpan4lmyggt54nzpi10OILMf2+AaCPrXebAEoNAloFGET5pIotNu0/qE5qhxSUC0BqAu24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4583
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-20_15,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=855
 phishscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306200184
X-Proofpoint-GUID: 9BU6a0-o7AFw2wff0iNu64AijUZCN3Dm
X-Proofpoint-ORIG-GUID: 9BU6a0-o7AFw2wff0iNu64AijUZCN3Dm
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I want to apologize about this one. Recently, Siddh Raman
 Pant submitted a similar patch and I picked that one up. I'm sorry that I
 let yours get buried in my inbox, since it was submitted earlier. I actually
 prefer his patch since it caught it earlier during mount time, but that's
 no excuse to not give you a more timely response. 
 Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qBhvK-00A3Ih-5r
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fixed UBSAN:
 shift-out-of-bounds in dbFree
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I want to apologize about this one. Recently, Siddh Raman Pant submitted 
a similar patch and I picked that one up. I'm sorry that I let yours get 
buried in my inbox, since it was submitted earlier.

I actually prefer his patch since it caught it earlier during mount 
time, but that's no excuse to not give you a more timely response.

Thanks,
Shaggy

On 4/14/23 8:53AM, anupsharma wrote:
> Syzkaller reported the following issue:
>           option from the mount to silence this warning.
> =======================================================
> find_entry called with index = 0
> read_mapping_page failed!
> ERROR: (device loop0): txCommit:
> ERROR: (device loop0): remounting filesystem as read-only
> ================================================================================
> UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:381:12
> shift exponent 134217736 is too large for 64-bit type 'long long'
> CPU: 1 PID: 5068 Comm: syz-executor350 Not tainted 6.3.0-rc2-syzkaller-00069-g0ddc84d2dd43 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:88 [inline]
>   dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>   ubsan_epilogue lib/ubsan.c:217 [inline]
>   __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
>   dbFree+0x46e/0x650 fs/jfs/jfs_dmap.c:381
>   txFreeMap+0x96a/0xd50 fs/jfs/jfs_txnmgr.c:2510
>   xtTruncate+0xe5c/0x3260 fs/jfs/jfs_xtree.c:2467
>   jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:758
>   jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153
>   evict+0x2a4/0x620 fs/inode.c:665
>   __dentry_kill+0x436/0x650 fs/dcache.c:607
>   shrink_dentry_list+0x39c/0x6a0 fs/dcache.c:1201
>   shrink_dcache_parent+0xcd/0x480
>   do_one_tree+0x23/0xe0 fs/dcache.c:1682
>   shrink_dcache_for_umount+0x7d/0x120 fs/dcache.c:1699
>   generic_shutdown_super+0x67/0x340 fs/super.c:472
>   kill_block_super+0x7e/0xe0 fs/super.c:1398
>   deactivate_locked_super+0xa4/0x110 fs/super.c:331
>   cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
>   task_work_run+0x24a/0x300 kernel/task_work.c:179
>   exit_task_work include/linux/task_work.h:38 [inline]
>   do_exit+0x68f/0x2290 kernel/exit.c:869
>   do_group_exit+0x206/0x2c0 kernel/exit.c:1019
>   __do_sys_exit_group kernel/exit.c:1030 [inline]
>   __se_sys_exit_group kernel/exit.c:1028 [inline]
>   __x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1028
>   do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>   do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
>   entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7fa87e2289b9
> Code: Unable to access opcode bytes at 0x7fa87e22898f.
> RSP: 002b:00007fff4bfe3938 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
> RAX: ffffffffffffffda RBX: 00007fa87e2a3330 RCX: 00007fa87e2289b9
> RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
> RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007fa87e29de40
> R10: 00007fff4bfe3850 R11: 0000000000000246 R12: 00007fa87e2a3330
> R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
>   </TASK>
> ================================================================================
> 
> db_l2nbperpage which is used as a shift exponent to get the buffer
> for the current dmap will be less than and equal to 64.
> 
> Tested via syzbot.
> 
> Reported-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715
> 
> Signed-off-by: Anup Sharma <anupnewsmail@gmail.com>
> ---
>   fs/jfs/jfs_dmap.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index a3eb1e826947..d2cf56dd8f91 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -184,7 +184,10 @@ int dbMount(struct inode *ipbmap)
>   		err = -EINVAL;
>   		goto err_release_metapage;
>   	}
> -
> +	if (bmp->db_l2nbperpage >= 64) {
> +		err = -EINVAL;
> +		goto err_release_metapage;
> +	}
>   	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
>   	bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
>   	bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
