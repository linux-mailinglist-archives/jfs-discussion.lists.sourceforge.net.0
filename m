Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD931C4D07
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 06:11:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVout-0003KX-Ip; Tue, 05 May 2020 04:10:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVous-0003KQ-FI
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 04:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DoqDXH/3ekdVQe0eRy5uE4ovem02TnuS1+gpXK1aVCA=; b=GTsK7NgPc2U3Izv9LdgdOjjmdG
 EGlq/JpQw/chEDPBBmYiV3J6NGqDwlZYaLmnDjKOHiZRpe63FEQiS4pAg24g78vPl5N4Td0qkNYME
 vGjrM0ggYriS4I4iHsgWHxLa2JAtVgKYU6HrRe9tWLJJq5tiD7L/F0gEgfXv2tXVY5lU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DoqDXH/3ekdVQe0eRy5uE4ovem02TnuS1+gpXK1aVCA=; b=OTeboPTaRB1FjbSXn57uNCmV5o
 hl6i2VCtF0oH2Pj2uTTTwEqwOvlBUQBDpivcqFMQUBJvzkfmlv7WTX6B+NfqxWrUFgVHQhx4FzcjR
 fynV9OeMwdAePe9XUpz3Ouqqh0AOawoK0bQ1gIIrZsDDvNd1RdJEGMzKhG0Fl94QA9Uc=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVouo-007m1E-1E
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 04:10:46 +0000
Received: by mail-pl1-f194.google.com with SMTP id t16so294479plo.7
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 04 May 2020 21:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=DoqDXH/3ekdVQe0eRy5uE4ovem02TnuS1+gpXK1aVCA=;
 b=E2iBL7r3i7+fGgkaDSkcdr4xgJYIvdXvpfhukXGhunJilBnuw2i0wDcSl40PTZOsBh
 9Cl2lWM6wdwbQ9wCJsGL0yEqO3efdvcGWpX3xo7jwgbqZxP7QOcELhwahRU2WxGcpCGr
 yEjSY+wM77i0QDEaOUedNPwDTD5+oVdAjhEdQOePFpFiffr/SIF8er1WB50+FVWI2TlG
 +fYq7qtVL1YfTt+Mr9ba6EMhz4kYJi8iFxsp+3whfv6sl5Stwx+4qFXdezCkQksQb1O4
 pAfudChDjEXdnlFLKHeXpgIpmrAJURvfp4OtmbKyPrTjxN3OYqDlCF720+XRKQwMCMw8
 KY2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=DoqDXH/3ekdVQe0eRy5uE4ovem02TnuS1+gpXK1aVCA=;
 b=G/N+ZEPB5mXEr2E1NHx3BsnYbTzHwOE7IgmQdq5UXtdwFPAU+Rd3WTNPraIqCNsfOR
 9RNRDK195QfeUNzgf3YBNZj+sPI+DPq75VDefFxQSEz4WESJ4RCdIQcjJ6/VGYtIPByb
 7gh6dsEEWvLkI4dGlvvI4yhp3afm7uuR7aMovQjx37TTh/Ee1/vVwfg9Rm23JCZPAW8m
 3GcfR8PbGvJBQzJBecGNXfDlV30aNXF/zW/VKO9QxId/TrvhrU2299OHB9+4kr5OJeKX
 gcWBz6B7gPFtGf/G8U9L3LhIU4+/5TLxVDDJhcvBS5A4GTmP+ds5D8Iy5ug3nqryZZpm
 cecA==
X-Gm-Message-State: AGi0Pubct6MgmxeUBM0PlyHJ79vmjeerzFl0/q1iVuzZIP7mJ22Dhdpj
 BgwDJlJO7ohqKFwtVQ0U0JE=
X-Google-Smtp-Source: APiQypLD5muE/WYp6e4N6pTtzFOfl/tftsP8gdsMUqnOE9ga8bx2CfE1LL2e8qTPkMdTAfvfhbYUnQ==
X-Received: by 2002:a17:90a:dc01:: with SMTP id
 i1mr597850pjv.166.1588651829190; 
 Mon, 04 May 2020 21:10:29 -0700 (PDT)
Received: from [192.168.1.7] ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id w125sm491358pgw.22.2020.05.04.21.10.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:10:28 -0700 (PDT)
To: Markus Elfring <Markus.Elfring@web.de>,
 jfs-discussion@lists.sourceforge.net
References: <5ef374a5-0e2e-5c74-a827-0148c384f6e3@web.de>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <abbb03ec-7ce3-08b6-7d08-420743067f19@gmail.com>
Date: Tue, 5 May 2020 12:10:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <5ef374a5-0e2e-5c74-a827-0148c384f6e3@web.de>
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jVouo-007m1E-1E
Subject: Re: [Jfs-discussion] [PATCH] fs: jfs: fix a possible data race in
 txBegin()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

CgpPbiAyMDIwLzUvNSAwOjE1LCBNYXJrdXMgRWxmcmluZyB3cm90ZToKPj4gVGh1cywgYSBkYXRh
IHJhY2UgY2FuIG9jY3VyIGZvciB0YmxrLT5mbGFnLgo+Pgo+PiBUbyBmaXggdGhpcyBkYXRhIHJh
Y2UsIHRoZSBzcGlubG9jayBsb2ctPmdjbG9jayBpcyB1c2VkIGluCj4+IHR4QmVnaW4oKS4KPj4K
Pj4gVGhpcyBkYXRhIHJhY2UgaXMgZm91bmQgYnkgb3VyIGNvbmN1cnJlbmN5IGZ1enplci4KPiBI
b3cgZG8geW91IHRoaW5rIGFib3V0IGEgd29yZGluZyB2YXJpYW50IGxpa2UgdGhlIGZvbGxvd2lu
Zz8KPgo+ICAgICBDaGFuZ2UgZGVzY3JpcHRpb246Cj4gICAgIEEgZGF0YSByYWNlIGNhbiBvY2N1
ciBmb3IgdGhlIGRhdGEgc3RydWN0dXJlIG1lbWJlciDigJxmbGFn4oCdLgo+ICAgICBUaGlzIGRh
dGEgcmFjZSB3YXMgZm91bmQgYnkgb3VyIGNvbmN1cnJlbmN5IGZ1enplci4KPgo+ICAgICBUaHVz
IHVzZSB0aGUgc3BpbiBsb2NrIOKAnGdjbG9ja+KAnSBmb3IgdGhlIHJlc2V0dGluZyBvZiBmaXZl
Cj4gICAgIGRhdGEgc3RydWN0dXJlIG1lbWJlcnMgaW4gdGhpcyBmdW5jdGlvbiBpbXBsZW1lbnRh
dGlvbi4KPgo+Cj4gV291bGQgeW91IGxpa2UgdG8gYWRkIHRoZSB0YWcg4oCcRml4ZXPigJ0gdG8g
dGhlIGNvbW1pdCBtZXNzYWdlPwo+CgpUaGFua3MsIE1hcmt1cy4KSSBhbSBub3Qgc3VyZSBob3cg
dG8gYWRkIHRoZSB0YWcgIkZpeGVzIi4uLgpJIG5lZWQgdG8gZmluZCB3aGljaCBwcmV2aW91cyBj
b21taXQgYWRkIHRoZSBjb2RlIGFib3V0IHR4QmVnaW4oKT8KCgpCZXN0IHdpc2hlcywKSmlhLUp1
IEJhaQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpm
cy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRp
c2N1c3Npb24K
