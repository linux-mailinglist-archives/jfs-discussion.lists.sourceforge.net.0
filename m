Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C503E1C5913
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 16:22:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVySD-0007ac-V8; Tue, 05 May 2020 14:21:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVySC-0007aU-UK
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eAUuDffef+SKab6BV2gqJGaP2t29oArGlcFYJfwH38U=; b=R/hyqVF0u0KoMkMWboun1qDpKL
 fSaVkUNwsWjM+++T+ZEWd14jRXrIernCioIU6MPf6lq/XT4EGHJ3GEcJBYbhuLkJit+MCPDaTFhB3
 6XSm3yfWzcTSitXE9jNJ7GS63dxc5NnpZtbPHmDMoHzm879xHkEYOQv6d2VLT2l6SA2o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eAUuDffef+SKab6BV2gqJGaP2t29oArGlcFYJfwH38U=; b=Qa0x06R5e+tH4sDgyW3Lgk1h/J
 TKA19/eVshnZcHfeO9AzRB23m0ePGUGiVHJ45L8vMYtUuRnhTyOia38xdapxb4xYnGST4K6X6RDEd
 oiUMAx6bvy9DsXvHcD4AkZhywyLlycO6v3eaVG4/EUFp4XRn2aY0oZdyH0lQazHrCFmw=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVySB-00ENp7-Ss
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:21:48 +0000
Received: by mail-pl1-f195.google.com with SMTP id b6so841542plz.13
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 07:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=eAUuDffef+SKab6BV2gqJGaP2t29oArGlcFYJfwH38U=;
 b=tuCqbnvR1GkWNemBW671Bn9V6e9Y1SHREsa4AEipbKin/vpc+1ek5T5KgnHQnwmVBs
 1AvEz6DMQa03Zbbbi6nMpmUs1dcd6jWZUtKwr+WaYPBnMhHO5U8itz1WBcZxWbb8SbVB
 nloUXBdOWHcSeiqIXiPk5hST46aIhSh98bI3EHLpki1W+x1dvvFeMWc5ggcPKFwld2SY
 WaAr/fseUTNKgh8CWhAlGqSk1XQl2FQOoqOVym7rstXcEqiAIolGEcouCZVEA8cWxy9t
 5IGVglH9r0elFsQQRStQkosB0y1WSJN/T2McNQQpDLWoPvHr2Sg1HFAXKb1Qu5A76/Lg
 RGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eAUuDffef+SKab6BV2gqJGaP2t29oArGlcFYJfwH38U=;
 b=ZV3lIAzYF3oJsv3Vxaq7t1ePlzR34ksnVz6mvorGdZa8CtYsTON0ywdReL2qhX4BY4
 +ZkGHs8mHvun1GJWlPhcX/9/Cb9siwF5X2HiyZm/RuWfvuXNJvnSC9uxejhn1i8lolL1
 leEJk21ARTVJp8yK09Oo4rN9o16mCXRbloXlXbJbC8rB3SaMsQyKn2QcJcCXNwefMKA9
 7F9SJZaxYF/e9r+y7Y3KC0315H0DerlWe/xBrmMjmjtYAotw0YUDddDxiZ3BXw+Z02v0
 bWTGHQidlD0/tDqjnQscUIrkztv8h4adY6LT/MTu7DTTHWnADmwARWmWj7yZOOm2Ygts
 uFSg==
X-Gm-Message-State: AGi0PuYa4BdCj4ZgchG3AbwRaHLdBxwkvSChJFaqFnamEhUXg4M58juK
 Edr094vzsu/wctFgc/fw8Tg=
X-Google-Smtp-Source: APiQypLtMbBtDxHog4ustBbrIiIeMpG8jnVA0urpR7RWuus7RBw9XgTQgxEw7+Q4LWVAMFuB9Q0WmQ==
X-Received: by 2002:a17:90a:d711:: with SMTP id
 y17mr3375951pju.11.1588688502228; 
 Tue, 05 May 2020 07:21:42 -0700 (PDT)
Received: from [192.168.1.7] ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id l16sm1687705pgh.35.2020.05.05.07.21.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 07:21:41 -0700 (PDT)
To: Markus Elfring <Markus.Elfring@web.de>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <20200505135313.28793-1-baijiaju1990@gmail.com>
 <d3e126df-e7f6-00bd-aa3c-ea39fcd1582e@web.de>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <05f9211d-6f57-b613-b584-a6d84b163645@gmail.com>
Date: Tue, 5 May 2020 22:21:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <d3e126df-e7f6-00bd-aa3c-ea39fcd1582e@web.de>
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVySB-00ENp7-Ss
Subject: Re: [Jfs-discussion] [PATCH v2] fs: jfs: fix a possible data race
 in metapage_writepage()
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

CgpPbiAyMDIwLzUvNSAyMjoxNSwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+IFRoaXMgZGF0YSBy
YWNlIGlzIGZvdW5kIGJ5IG91ciBjb25jdXJyZW5jeSBmdXp6ZXIuCj4gKiBIb3cgZG8geW91IHRo
aW5rIGFib3V0IHRvIHJlcGxhY2UgdGhlIHdvcmQg4oCcaXPigJ0gYnkg4oCcd2Fz4oCdPwoKT2th
eS4KCj4gKiBJcyB0aGlzIGFuYWx5c2lzIHRvb2wgcHVibGljbHkgYXZhaWxhYmxlPwoKTm90IHll
dCwgYmVjYXVzZSB3ZSBhcmUgc3RpbGwgZGV2ZWxvcGluZyB0aGlzIHRvb2wuLi4KCj4KPiDigKYK
Pj4gLS0tCj4+ICAgZnMvamZzL2pmc19tZXRhcGFnZS5jIHwgMTEgKysrKysrKysrLS0KPiBJIHN1
Z2dlc3QgdG8gb21pdCB0aGUgdHJpcGxlIGRhc2hlcyBiZWZvcmUgdGhpcyBpbmZvcm1hdGlvbi4K
Ck9rYXksIHRoYW5rcy4KCgpCZXN0IHdpc2hlcywKSmlhLUp1IEJhaQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
