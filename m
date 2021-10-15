Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3650B431B6C
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:Date:Message-ID:
	References:To:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AoLZ/7fGXeAFwxxbX8kNUGIKFru950f1q/rAQQ9FVCw=; b=Ym+jVdE52HEFOVUxzT3CakZ8mg
	JQH1DK6wW9zASxgpBKBgip4FN5dTvjIOibdOhicKkhQqYoqokBUtcLIt39fu3ccmn5om5FVtF8p6m
	a8cTZP+dhH8l9c1Co+0W5zcONVbJE1bRmn54dv6rDLlDE/eOkeuZ4P2TNckFSWrri6Ys=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjd-00028d-IW; Mon, 18 Oct 2021 13:31:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lduncan@suse.com>) id 1mbRlX-0004nG-Ld
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 18:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m4dfeoXG+Sb747r1kiHnXbAbgB6Mk9qwJHpOSq1ikW0=; b=YkQ4lv+ZsP11CzgPh7sJUPWngD
 S4uyEeGURSkS2mM6GAjc/Y3M6wfiPyLOcO9b0QIbmLIMeBTjN/TxfPAJjJWCr00RoaSW8k7L+OoCf
 eevODN+QQ9Ns1iCOmniZwRZKvPFwfLxjcdTwsG8KqQFj+/L9JxbTxxNs6/vNgQ1saokM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m4dfeoXG+Sb747r1kiHnXbAbgB6Mk9qwJHpOSq1ikW0=; b=aB0bwJ+ie233cQ19AbI+XGxejZ
 J8YU08MllPOPxdAlnggPltA1V63LBl97Mu1fyBf3R3AYYUj7CPBe/wdOvOIw4wq50y+GLI+Y0pXOh
 wwPivRQXIF/y1yn2g1gG2E3DO9ay52CWhVAn2vCJOvAzyXmdbx3bjqiZn+DI/DWezBKI=;
Received: from de-smtp-delivery-102.mimecast.com ([194.104.111.102])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbRlT-0003LY-UL
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Oct 2021 18:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1634321820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m4dfeoXG+Sb747r1kiHnXbAbgB6Mk9qwJHpOSq1ikW0=;
 b=lAN5GtwCgEUkLAnOw2ZEVn6VgSOVQxCsMhj666aX/dDDi9zwmG9q0rrpmi2DZU2AUP+2RR
 5gwS+1aQhV4VNQJgJkrZ++ZieSX1FR35gkbrAKFPiT2rj6hzhuXqWVXoEWWhGpq4YP+QPY
 YxlLV0FN7sxJDNYF4UYSy1q8XulEgYg=
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05lp2109.outbound.protection.outlook.com [104.47.17.109])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-7-59orNfWqPLe_NL2di8xrVA-1; Fri, 15 Oct 2021 20:01:09 +0200
X-MC-Unique: 59orNfWqPLe_NL2di8xrVA-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmQIFlLC2YsL/x7u65wGYVuQVXp9M8X2iPznfn3WBmSPMtTTC0FWcacW2VdKULxOLFI4cr4tFBvlGXLckuENPa1quWydNCWIM9mvluSOlh+aYlIPQVKTBGvvJtdLY0kXSjf9p9iZp2XFnU6nC7bHoiRhejDgUt2HbZaklxPN1tkN48RBXjr+VN3A8qKJEBF0MyqqA0r6X8LKtCEp3N1mQZl4GXXJIPPjvnAXfPWKamkuX2HmstnGCaY0Af98qcW3Ep0AMUJbK67goOesU1c35vUs0zfZXr/1irPAuZISQDwEBe2b8pMEGqSf24H5d088i/8Qqmwcr7FLxlTTg9fC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4dfeoXG+Sb747r1kiHnXbAbgB6Mk9qwJHpOSq1ikW0=;
 b=AZnTF78vZ2eq8hYLWjOgVRS1R6AS5LTXF5/gfca8r0P6WC4unxSncfA4zQ0ADn1dNjl70DCnmDPNjTOk7sZLbHP4U0vf5eMTgn7fkB98hdMcI75sArExCJ/QwMZChqcJjiMMNVs0WvnAr5nxRNUljKNpYjqltzmcf44hwfBmIYW8GsvGiI8NQJp3v/DHcScrjzNNPlmrsbyOP7XQ8jS9wUu+VJ23fj465JHvG1QrEA+qOLyrcAU6B1oge5uxGLkBxTBOUUDONp04utenxvWoQYaRFjPkZLGsbZfU6uDD53bwm3nWFzYPJqCLVi1pJ2Jqib7FHwo4yjZLohBypi6XIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=suse.com;
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com (2603:10a6:206:b::28)
 by AS8PR04MB8197.eurprd04.prod.outlook.com (2603:10a6:20b:3fd::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Fri, 15 Oct
 2021 18:01:06 +0000
Received: from AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::a555:3b27:dc03:8fcb]) by AM5PR04MB3089.eurprd04.prod.outlook.com
 ([fe80::a555:3b27:dc03:8fcb%6]) with mapi id 15.20.4587.030; Fri, 15 Oct 2021
 18:01:06 +0000
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20211015132643.1621913-1-hch@lst.de>
 <20211015132643.1621913-5-hch@lst.de>
Message-ID: <211d2871-6232-8111-987f-077a95d92a1a@suse.com>
Date: Fri, 15 Oct 2021 11:00:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
In-Reply-To: <20211015132643.1621913-5-hch@lst.de>
Content-Language: en-US
X-ClientProxiedBy: AM7PR02CA0013.eurprd02.prod.outlook.com
 (2603:10a6:20b:100::23) To AM5PR04MB3089.eurprd04.prod.outlook.com
 (2603:10a6:206:b::28)
MIME-Version: 1.0
Received: from [192.168.20.3] (73.25.22.216) by
 AM7PR02CA0013.eurprd02.prod.outlook.com (2603:10a6:20b:100::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Fri, 15 Oct 2021 18:00:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee094ca9-ed7b-4cfc-69c7-08d99005c276
X-MS-TrafficTypeDiagnostic: AS8PR04MB8197:
X-LD-Processed: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba,ExtFwd
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AS8PR04MB8197C5ACCBFBED7DB371A09DDAB99@AS8PR04MB8197.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:239;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GzbIteyedOPac8q2TN/axoG9jTlv8IJTUyUKJCRq0WMWjj6oe6wZwIeved2EBPJkMepYz91pj+aJQRl7dWfSDuXsWeM/aD3y99iwJR47akk9hm6OCT7CSSxDTmsaibRq6KH/CrqLmrcbuVaJEkalO29yOpzsT2ozqk4v6482lciJeV4AdSSvmVSRDDZ1eY4wsCtq/IEYwoPd0uf2IwUsW0WN/c8FPOqg/J2uCiaFaW5B6Bj/j0UnQD48Aa0K4API3uojrLqRSAJFAa2i1bB2aQjKtrxIaCeupZZSfdQLsfkdhHfSU0HkYUzo6y39PI8eI8vzfSDBDhaOOB8KdJIm5YOg4PHc8SU+/yanDY3J6oJbWGNQEq13bTa6fG6BLXZMOw3Yga4HncNScZRaxoCESWQF3IsiUcm8C9CRPZp/imzQZA3skVfUXX1c+QBKWXLu4G3FWWDL26CzwNDeOnUKi5yIj4hcacJTUEt6AMnzUrbxV7HzXyQNJu1wZlCu/4oWtqRiLTCaW6kZJeIP0MRyWeaC2l4+Bny1KzF+IyYDPbWJNvCWU8mNx3zQ+aEntpQajSUEPLfWgLxnz82Sb7QgaKYokBOXpySuxBDJc+hb2POhXYqrRnT7IZI8jSyS9CDKjsTUixhMyCxP4P1XhKefTbR5yW9OGIqhxC36UWi2Wgu8GhsgNSoY8vEOaQrGdTQgnd9pRMCFpIbTkZyg7xIMyEIPXUX7W82aUxu21CgWw7c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM5PR04MB3089.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(66476007)(7406005)(186003)(66556008)(53546011)(83380400001)(110136005)(8936002)(26005)(4744005)(54906003)(316002)(7416002)(31686004)(16576012)(508600001)(4326008)(8676002)(38100700002)(31696002)(36756003)(2616005)(956004)(6486002)(2906002)(5660300002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXM2cEQ2U2prbWVjcklZNVllMXFhSG9IMVZta25VcnJhbEx1bmtLQnNQMmYx?=
 =?utf-8?B?MmJVdGdTamtVZDB5UWFTMUZ0OURHK2pacEJiRVcrVklYajV2ZHJldEo2NkVt?=
 =?utf-8?B?Y3B6UHZhN1NBZXFtWmxDSzZuaGhmSENNa01JYjNyQlRITnRoNDZZVjc3V0N2?=
 =?utf-8?B?RjNJR1dTZExsMXEyREVOQ2ZSWFBBdUw0bmFtUEZmT2Y2OEg4RzhPM3BKRUJU?=
 =?utf-8?B?QVY0SnRwUDh0TUlTbHhsT2ptZ1VONFIrU2M0ckpqMzl1NGdjcC81RXI5Z0hu?=
 =?utf-8?B?ZTFGeEVBdDVBRWpxOGc2N0RmL1V5R1VVQTF0ZmtQWitaOWZvem15MmpEU2ZW?=
 =?utf-8?B?UnhyT0xxZmhPeWg3bHl0M0pYTkNJSGExcFlzZXdJR01uN0RRV2VvS1RrRExV?=
 =?utf-8?B?UGI0MDgyWFRWbWdCdzVzWEpaYTd2bUxpQ2NhNjd2cE9pRFhkczZIWm5yekdB?=
 =?utf-8?B?NVl6UlAzWnAxbTliVG80YWVIYm1DRXU3Yk81cWJURUM0ME9panNqcDA3YW9B?=
 =?utf-8?B?Zk5rejdmbDdFQXQzMDVwdTRqandUMGcxR0FWNGF6aEhmZmYyNURqRnlsUmlu?=
 =?utf-8?B?bUNZb09KMnE0MUZwb2dFRHVpQ2lmcHVJbnFGTXRRdFowc2RaU3dBemFIRDdE?=
 =?utf-8?B?OWp6YXg3SU1wMGtZbE5GVTkyc3Q0dHhTKzRPdGZQWGNkTGRYc0V0VFprcDdp?=
 =?utf-8?B?RVlvNHRFcFhxZUU5UUpIZGV0SWpGdkx5TU90Y0hrZmFqcGNjaTlndlk5U0lY?=
 =?utf-8?B?eXNnZVZldlBWQnFLSmI3YzlqbFJFRUs0TER5RGhranB2RUF1L3RCakJHREZD?=
 =?utf-8?B?UFVPU3pCeDBMS1hlczlTMkk2OWF1UTdSWk9HK3AxdUJWMzZ5SkZZNFBjOG9T?=
 =?utf-8?B?S0FqVU8wWHlBZFVXZnpJN0wvWDNVZGxSRnFreFFrTU1FWXRpalRsRDF0eHMv?=
 =?utf-8?B?aVB1VFlSeDczOUVacXZqRmJnSjRWdnBnWU9BcnBnaVZVZEgzZ1JOTk92ZzRT?=
 =?utf-8?B?dkh6S3c1QnZGZHhsbnRhWkU1OEhBMVhBYWovWFhKS055SjhpNFgrNzM0SXA4?=
 =?utf-8?B?MWJXbDcvcjB4dkVuYmtjWUhtVlM1bVVaUVJJL0crRDRRdVRzODVtdXdoMWVT?=
 =?utf-8?B?OGRxM1d4aDBnYktKTUg2S013R2hBdm9QY2xWckF2TlpPODVJT2x4Y2lOQXhD?=
 =?utf-8?B?YURtNDlkSUtiMXhqblM2cmcrTFRHOUlmcXBocG94WnJlZlVXeWhDamtNZEMy?=
 =?utf-8?B?TzA2NzJqd0pMM1lmZVNEc2NDSXZVa0JseWpsY2s5SWpWd3paV3ZQR2tQeVpV?=
 =?utf-8?B?Y2NyVlZneVJFTzZScGJZZjBTZHB4VWhuRzl3YTZTbitqWjRkK1VGOHZlWFIx?=
 =?utf-8?B?MHczbDZvV3pSKzRCeWdyVDJzNzR3UDVXa040RTN5RkoyQzg4OTdZTkRzL0d3?=
 =?utf-8?B?OXIwT3VyRzBvU3REN1JJVE8yU2NsNlY2WkdyWnd4MGpGQWZraUp1VUNOa1g1?=
 =?utf-8?B?WTNxVGdZeHFuYkwzckJFNVRzVjB0VnhlNitUN2dadldIZWEzMGtZTjdZUWlK?=
 =?utf-8?B?V2RZRGh4Y01wVHl2V05zUUdvSkV5R1RKZ1VzYVN3QVhqTkVzZFlPSXFKM2sv?=
 =?utf-8?B?cWR0T3ErT3JOZERQTkJWanU2UW91NTlTSTNLZ2JXTkt1ZllSMHNZVWhmSjFQ?=
 =?utf-8?B?cmZvYmVQQUIyL095R3ZXZ090VTZDUXo1U3VsZXFSaUdzUTh3dVFoSENidFZT?=
 =?utf-8?Q?yYYSVh23XQ7xzudDAxPur6QoGlMl+DNkP0H7Acd?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee094ca9-ed7b-4cfc-69c7-08d99005c276
X-MS-Exchange-CrossTenant-AuthSource: AM5PR04MB3089.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2021 18:01:06.4190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QQbtyz182hOsB6th+TGOR3dIkXI5fdd4rfcypUNe3HYsgkin8mJedRs6CL6MH72z32HjahC/KExYTRxvgHHYZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8197
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/15/21 6:26 AM,
 Christoph Hellwig wrote: > Use the proper
 helper to read the block device size. > > Signed-off-by: Christoph Hellwig
 <hch@lst.de> > Reviewed-by: Kees Cook <keescook@chromium.org> [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [194.104.111.102 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.104.111.102 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mbRlT-0003LY-UL
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:24 +0000
Subject: Re: [Jfs-discussion] [PATCH 04/30] drbd: use bdev_nr_sectors
 instead of open coding it
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
From: Lee Duncan via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Lee Duncan <lduncan@suse.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Chaitanya Kulkarni <kch@nvidia.com>, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/15/21 6:26 AM, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>
> ---
>  drivers/block/drbd/drbd_int.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/block/drbd/drbd_int.h b/drivers/block/drbd/drbd_int.h
> index 5d9181382ce19..75fda53eed8cf 100644
> --- a/drivers/block/drbd/drbd_int.h
> +++ b/drivers/block/drbd/drbd_int.h
> @@ -1826,8 +1826,7 @@ static inline sector_t drbd_md_last_sector(struct drbd_backing_dev *bdev)
>  /* Returns the number of 512 byte sectors of the device */
>  static inline sector_t drbd_get_capacity(struct block_device *bdev)
>  {
> -	/* return bdev ? get_capacity(bdev->bd_disk) : 0; */
> -	return bdev ? i_size_read(bdev->bd_inode) >> 9 : 0;
> +	return bdev ? bdev_nr_sectors(bdev) : 0;
>  }
>  
>  /**
> 

Reviewed-by: Lee Duncan <lduncan@suse.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
