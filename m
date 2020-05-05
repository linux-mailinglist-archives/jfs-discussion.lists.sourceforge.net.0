Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2121C5632
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 15:05:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVxFa-0001ZN-TD; Tue, 05 May 2020 13:04:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVxFZ-0001Yu-F1
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tY2Tzay3CtpKrgEwP5AMH50BGKklVo94Ad6zROIjzd4=; b=aX0VgHaWs85QNYXSwrBepbJ6Io
 YthLkhL41+97IZDMBynWpgYJFJBSeR9FLNJ6GwATwy377T77sr5PKLtM4uK+YfvM3YKX8tzdT65fJ
 shoVo5KUDRiyww0d5HSJbdzrp3FdVtc+oZAG3suDYBAfOd1BQX/uXJOjoLVz87vkwG0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tY2Tzay3CtpKrgEwP5AMH50BGKklVo94Ad6zROIjzd4=; b=VW4Ys7ySRbXigHdvNRm/ckQbUM
 d7XHawwfeVxTHEczn6izNxeTWa798qw38mw/9x3nFfR25X6quQ5JolSjjGu0zNOqZxPYh/eMBGQjY
 e7WOdQSQb6RIMB5ZxYbjHZdNDHE9wUfqHavFKUWyH+ESe2LjkKrTlNFI9oh7EkKPa4u4=;
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVxFX-008C4B-DQ
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:04:41 +0000
Received: by mail-pg1-f196.google.com with SMTP id b8so986414pgi.11
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 06:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=tY2Tzay3CtpKrgEwP5AMH50BGKklVo94Ad6zROIjzd4=;
 b=hgK6KdCe1MUlx2uapDcoAkSv8U6euhMHtQyQLqeUl+c5XDoAzf6gXknvLILCI25g16
 iK4YR89e3F4MKtdDHWeY6tcQR28GzqMMOX6fn7Mbq9FYgojY+XNJuB0N2262dx+Url70
 4PAwzESvGxgPCQfytGGsrQv8Lt+j0roH+KFc1LdCQLLmCG0Vp6UDNpd/UP+YRp3nXVwv
 QUp0bJos+4P5PMicYhfEXhqmZWyn9UT9cGGgFnT9O5TFYX0uZgEzh2yRJX5D9dGkdeRj
 rLrwHViuhzyGZhrMEkqwNZlUHYnZ68ulDJX7DwkDwmTQ+zWxA0rRyzueNon/WjoO3ePP
 Hbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=tY2Tzay3CtpKrgEwP5AMH50BGKklVo94Ad6zROIjzd4=;
 b=PRxVCd3ZO4QEFd8ukVPU+ztpsil8Fqf5GAGLqObHb2cn+EY8hoCuUhMu/LtCp8a4bd
 UcV1KWANn5UBhK+VmI3m2RtZOn8Mgakq0mRy+wK0oZA82J/OuA8PWjqk1NtCDQC+oLVm
 BVFphSUBsEC5rIGEyxduwp4Zg/G8J5DhRGRdaeSybdMv4kWj/sz8CUHzg4zC7rYG/vbZ
 vq8YPsaycit+AudxnicyGcHxLAHKLpC32/1O4LQVtm4X2veNI5rBBJ1zWaHuH64XKcpx
 WLEl2mteZ/p2xoAdGZQ3TqpN46QsyykzBh7cScweAcYoeVucgmy7C17jkuXYfNHRJaHA
 Om5A==
X-Gm-Message-State: AGi0PuaQgMOT8ml86AYNaD+6IP2egj1eqR0crz86BXwi/kdz28xB7tZd
 bQuTwT+tx8R6Twy3VHkIxzY=
X-Google-Smtp-Source: APiQypIkmjaLT9hLhrdtgGzDP78a4P++lfdDp873GTeMiiFe/EbuahrP7N0IemUKzf2G7LGjNZu+4w==
X-Received: by 2002:a62:1c89:: with SMTP id c131mr2903107pfc.164.1588683866499; 
 Tue, 05 May 2020 06:04:26 -0700 (PDT)
Received: from [192.168.1.7] ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id b12sm1953307pfd.165.2020.05.05.06.04.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 06:04:25 -0700 (PDT)
To: Markus Elfring <Markus.Elfring@web.de>,
 jfs-discussion@lists.sourceforge.net
References: <5ef374a5-0e2e-5c74-a827-0148c384f6e3@web.de>
 <abbb03ec-7ce3-08b6-7d08-420743067f19@gmail.com>
 <fa6fabec-8cc5-fc62-657f-3794e9405fac@web.de>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <e6ec72e5-e1d8-cf15-ddfd-2e335c5de962@gmail.com>
Date: Tue, 5 May 2020 21:04:09 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <fa6fabec-8cc5-fc62-657f-3794e9405fac@web.de>
Content-Language: en-US
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVxFX-008C4B-DQ
Subject: Re: [Jfs-discussion] fs: jfs: fix a possible data race in txBegin()
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

CgpPbiAyMDIwLzUvNSAxMzoxMiwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+IEkgYW0gbm90IHN1
cmUgaG93IHRvIGFkZCB0aGUgdGFnICJGaXhlcyIuLi4KPiBIb3cgaGVscGZ1bCBkbyB5b3UgZmlu
ZCB0aGUgYXZhaWxhYmxlIHNvZnR3YXJlIGRvY3VtZW50YXRpb24/Cj4gaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
RG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3Q/aWQ9NDdjZjFiNDIy
ZTYwOTNhZWUyYTNlNTVkNWUxNjIxMTJhMmM2OTg3MCNuMTgzCj4KPgo+PiBJIG5lZWQgdG8gZmlu
ZCB3aGljaCBwcmV2aW91cyBjb21taXQgYWRkIHRoZSBjb2RlIGFib3V0IHR4QmVnaW4oKT8KPiBJ
IHN1Z2dlc3QgdG8gdGFrZSBhbm90aGVyIGxvb2sgYXQgY29ycmVzcG9uZGluZyBzb3VyY2UgY29k
ZSBwbGFjZXMKPiBieSBhIGNvbW1hbmQgbGlrZSDigJxnaXQgYmxhbWXigJ0uCj4gaHR0cHM6Ly9n
aXQtc2NtLmNvbS9ib29rL2VuL3YyL0dpdC1Ub29scy1EZWJ1Z2dpbmctd2l0aC1HaXRzCgpUaGFu
a3MgYSBsb3QsIE1hcmt1cy4KSSBoYXZlIHVzZWQgImdpdCBibGFtZSIgdG8gZmluZCB0aGUgbGFz
dCBjaGFuZ2Ugb24gdGhlIHJlbGF0ZWQgc291cmNlIGNvZGUuCkkgd2lsbCBzZW5kIFYyIHBhdGNo
ZXMsIHRoYW5rcyBhZ2FpbiA6KQoKCkJlc3Qgd2lzaGVzLApKaWEtSnUgQmFpCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFp
bGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
