Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1B71C5A11
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 16:51:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVyuy-0000kZ-De; Tue, 05 May 2020 14:51:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVyuw-0000kQ-OA
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M2EXFFKRgen9dOdoaNmpWiHUyjNR6THbe0hOWRO7mK8=; b=XwU5mjYd8dKZP3skgkgQ+B/hnK
 n1SQyCOYiu6q24dgDsSuLO/aeva1T2UUTSHzesTsz4jk1y/S62NYE6GONPYsDkX+SE9o1lWrcJwgE
 aphMhGoNJWkI8NLTp03zCoZQAmSG7Rcx4Ho9L3/Z5gUmCwWPwF0828dRHmlDPEOQui30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M2EXFFKRgen9dOdoaNmpWiHUyjNR6THbe0hOWRO7mK8=; b=lhxzVb5yyw0MNPOWwS54WDr/B8
 FQRmvGIZ+MCLHfGKTaoBMi/yM/yhAcnfx6vYtEkhWyw6Uxv4TWuhMSk94H5SgQjWM7Kb8/H3x20rR
 3h3YnlvzYpnn6ZotSkboCTudTYrksm+dsvYYg5uotCv3LZG+pKhQ1sn0v9LeRm/YJ7CA=;
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVyuv-008INO-DI
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:51:30 +0000
Received: by mail-pf1-f169.google.com with SMTP id d184so991819pfd.4
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 07:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=M2EXFFKRgen9dOdoaNmpWiHUyjNR6THbe0hOWRO7mK8=;
 b=D7fddasAWnayCiXP2vHn30lJiXBOJv2aUiHOdfJde4gO8WX1JRBXjaUsSh2f8mxYla
 4Vcx3Lj7+2jFSZozWlZUqJ4F/wBJeDLYJdvLg7VanqP07JlBBqtkBCqZZBIGaBx+ozlG
 1CWshZSJFrUHiODphYd2AfN9t9lUsX3GgK4i4aGC1nbA1xu/8yhuTNkbYYH95w8mrY6G
 wPAc0l7d1YO0y2OmI1XmbtlFcZaMGMBON7c84uuWbYjK6CgU8A3QCP2bD3UK4x38AqKg
 OkLqZ+ZQlbycqkgaaImtw/veRODLqWCXNa3yJJ4Mq21juD5AOLy9wI9SpzCSNPT0yRF1
 TIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=M2EXFFKRgen9dOdoaNmpWiHUyjNR6THbe0hOWRO7mK8=;
 b=hiUF1tjyc36ZxgXg+8zk2xkRxAq1woHnNvatIjyRTxxkuFrYJMhl31+biQVAj9ji9T
 fR9TTKKq7DPH/QjZO8HqAYM8AxHsK7VRK005CXCIlDAtZqFETAApGiJoqibwz+rR30Ap
 fvhvviic1jZWuAkzOL90DCwSFuuBKdrEMkPEifqYL34kFmforpnCXxLmgrZ8NRlJfSIp
 QpiT9b1EA9vdcrX3qmPP3M2f8atMv9iAeIjBDQ1XSTtoELGeZ0Yoclsam7ZuObr80Y1P
 p7KGiDglf/W8ADxBQxJqhxVnICu1nWBhk4vnvS8Hd3eyyXt5tDARmNupIr1yqbdeTqZw
 GQCQ==
X-Gm-Message-State: AGi0PubAiGdaTpuKh9UaoSX8M5EnNXfa8SA8R61Gx0Gr1OO39luyN2j0
 4C7If+Ceq06Gx8pf5QFZI0M=
X-Google-Smtp-Source: APiQypLWT/eT6bBlOmzsdnLhfcWjUIOGYmmUvs4tqBFlqETjzRpH8Cy+o7M1d/EQm2xTC6ZHMmnHZw==
X-Received: by 2002:a63:da10:: with SMTP id c16mr3216084pgh.208.1588690276578; 
 Tue, 05 May 2020 07:51:16 -0700 (PDT)
Received: from [192.168.1.7] ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id x185sm2293389pfx.155.2020.05.05.07.51.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 07:51:15 -0700 (PDT)
To: Markus Elfring <Markus.Elfring@web.de>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <20200505135313.28793-1-baijiaju1990@gmail.com>
 <d3e126df-e7f6-00bd-aa3c-ea39fcd1582e@web.de>
 <05f9211d-6f57-b613-b584-a6d84b163645@gmail.com>
 <074b3682-054a-d2ec-8142-1d87e1e97ed6@web.de>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <10f050ee-1b73-d015-ab57-fa0a3b59577b@gmail.com>
Date: Tue, 5 May 2020 22:50:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <074b3682-054a-d2ec-8142-1d87e1e97ed6@web.de>
Content-Language: en-US
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.169 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVyuv-008INO-DI
Subject: Re: [Jfs-discussion] [v2] fs: jfs: fix a possible data race in
 metapage_writepage()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

CgpPbiAyMDIwLzUvNSAyMjozMiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+Pj4gVGhpcyBkYXRh
IHJhY2UgaXMgZm91bmQgYnkgb3VyIGNvbmN1cnJlbmN5IGZ1enplci4KPj4+ICogSG93IGRvIHlv
dSB0aGluayBhYm91dCB0byByZXBsYWNlIHRoZSB3b3JkIOKAnGlz4oCdIGJ5IOKAnHdhc+KAnT8K
Pj4gT2theS4KPiBDYW4gc3VjaCBhIHBvc2l0aXZlIGZlZWRiYWNrIGluZmx1ZW5jZSB0aGUgY2hh
bmdlIGRlc2NyaXB0aW9ucwo+IGZvciBhbnkgb2YgeW91ciBvdGhlciBwYXRjaGVzPwoKT2theSwg
c3VyZSwgdGhhbmtzIGZvciB0aGUgYWR2aWNlLgpJIHdpbGwgcmVzZW5kIG15IHBhdGNoZXMgZm9y
IGpmcy4KCgpCZXN0IHdpc2hlcywKSmlhLUp1IEJhaQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
