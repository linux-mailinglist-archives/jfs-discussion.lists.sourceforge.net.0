Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3893EBFC1B0
	for <lists+jfs-discussion@lfdr.de>; Wed, 22 Oct 2025 15:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jqevosidWIEpofejp64Ka2urbAAQ6r81Gs+NTSLcmDw=; b=J1PksttzrRaI5VP0CLM/ASIjuE
	ypLK4XaCmfS74Xezojjecnu5sg5Ebf3UhZcgX8X56hY2iUBTuLJJXQW7eSO6xRBmwUs8Erk73MC3q
	Id6mHZj3OoSTUR4oXjyWwaLMjOdtfKtG5QNnuzhxRnx7Wxs9el/p+YkBqkTl9d3CrQLw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vBYnY-00055f-AQ;
	Wed, 22 Oct 2025 13:22:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david.hunter.linux@gmail.com>) id 1vBYnX-00055Z-AX
 for jfs-discussion@lists.sourceforge.net;
 Wed, 22 Oct 2025 13:22:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kIgAHNYvOFEuUkO4rNfbG2Xes9Yw1wwtK3/M1F3s6kg=; b=f8304A8xK4ozP0jPZLG0XOM1uR
 PkXtTkYL6R+Ih3u1KKUPxTpH9q83LYA0EfdbgDhoAh1P44ZY5G9eGvxycxjWDc+E2CHptaGzR3YEe
 F9N/0NZxQpSIq/wDCaOQ+V80s3kFVIQbvk+82gfKhM2Z9EZVF7we3ath3EoCEfCMnpJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kIgAHNYvOFEuUkO4rNfbG2Xes9Yw1wwtK3/M1F3s6kg=; b=Tcs8mneCHtFSdHgbNKaYOq/1PZ
 jirIy76J0UKVCdHlxdwkydD1nJ0Sw3Em6L4NU72JmLuKsQ7li0bmhgQ/vRXRuw4IHTsNE5XsWKX9/
 JJ2YWPg95qcZGIbQC2kBFw/xU+KVnrUgkiC+CEZSKeS6RL1ZVxfXg7b9uNYSEJUBpVKw=;
Received: from mail-vs1-f42.google.com ([209.85.217.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vBYnX-0005ce-07 for jfs-discussion@lists.sourceforge.net;
 Wed, 22 Oct 2025 13:22:39 +0000
Received: by mail-vs1-f42.google.com with SMTP id
 ada2fe7eead31-5d758dba570so3412244137.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 22 Oct 2025 06:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761139353; x=1761744153; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kIgAHNYvOFEuUkO4rNfbG2Xes9Yw1wwtK3/M1F3s6kg=;
 b=ib5qkMqyx5pNDG8ZtWI0iosmjviY7/wY2xPeadLiwDsaQPzKKwuM8YtNAIcj0N7ja+
 cWvbE4uF05fUpIBC6DzXwJsxle4z13yv4I9hESupoHW9Qemha3rPitrcUvDkxhcVtQ61
 AUTdzFtUrbOEr0KpC5Td5OgL+ua6pJnIvqxLlgyKp9+iiLkRgvZnIGOQAEF5rLMVhea1
 QNnPpf8IvWEFK2Ou5ywnXs2xb256rxE436ccyjzwKEenS6SIRfyVSB7Yx3Ooy/iwm6jk
 OJGRfK2yb0/qOdhI9zPa9qhAdeJc9v2Ls+UWCJyfgvNtyswXtUrdK8bhJZo7hYV2ashx
 AOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761139353; x=1761744153;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kIgAHNYvOFEuUkO4rNfbG2Xes9Yw1wwtK3/M1F3s6kg=;
 b=LTN3HRYLqrEtfTEVPxO35RWGNCZtTNF36mbGq9a19sbrVrx4sbM6MnJsySxlxwL5ep
 4M6Fyccxn2JVKBlqJFdQ8Nqi8J6XruRlnkUNaDzntEROgJmHYzzalMvxSt9ieBFhWhiB
 mWM7ozv4eKHrHhGtfGQMQ2fkkX8jUhpdV8lJ+FsTpBkDHvJj3BMo2M5PCS2W2H288qFG
 nj9ICzXw66hdt3tLZuZdwl1PGBl9BOqMeVP51sGTdaWNWih99Rc3LHYsRsB7ozIGgk0f
 HLtRNdhN6UgdFPS9IesssvYkDAjxd6ALqKbCV+KhzEjdXImD3HG/pfFL8jjywI/9JoAa
 PWGg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWOYn/D6nhRgT7ppFBYW4S5sFQfORwhm7G2f3wC9F62WsxqSaZPgBc/1wupw5QUc5zw88HxFnVHvwf7deLW4g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx7qMlISCWgHuczlPyhfCmbP+AkJsRRJDVA54Bf0HAKg7GacWA0
 6hlz5TnjVA0TReS9GmW8PNnhqBpIL/lenfCqnG5OebgS/JK+kDbKyqc2
X-Gm-Gg: ASbGnctfHioUi0HxIKwBz4MFRFqdB8nXHzyiuyIc41rVHIJiKCJBj1I5f7u7ZK8Tn70
 +naWqXxYs1vFoqC+vEyjUn3dvv/WAQTku+ckicv+nGA1j1cqAnRIOAwRk+uw6NZiVJdXPRxTRt1
 8E/D9YuyI6DvE77nBatnREEV6EdcuCcsWVemiG3Lf9OS8DvmP8npqnxcwghH1805pl/udhjGq6c
 cTCPMTIBfG9/mJ8icsycMseO/Fg/5WOLfLxkDHhiAzFUWmOq/O6vG3owjCsmaofhBooisWWj77Q
 8byELR45S95zlcq5I7oB4ycShTRGPpRzZNe3VSXmCzGG2LuqI37C/us231+eAQjkD7I2koNOtsw
 nyzDHXFIi29WZ7+8PLp+ZOS9+yP6suKp5hyEvjJjLpIRiU4qRl7lMF6NtjotL8AKb2nUtZfMIAG
 R6r3TQjmsbdvhT7Ytw
X-Google-Smtp-Source: AGHT+IEm8L6FEpAdRSZbcd0wF9nqzm1wzgL/FJhZQKf70WgEl9kbX/Hyj0iCqdeQUn2qPBgEF/3rHg==
X-Received: by 2002:a05:6102:d8d:b0:5c3:d964:a689 with SMTP id
 ada2fe7eead31-5d7dd67f8a5mr6408266137.32.1761139352889; 
 Wed, 22 Oct 2025 06:22:32 -0700 (PDT)
Received: from [192.168.1.145] ([104.203.11.126])
 by smtp.gmail.com with ESMTPSA id
 a1e0cc1a2514c-932c3e32e11sm4680749241.12.2025.10.22.06.22.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Oct 2025 06:22:32 -0700 (PDT)
Message-ID: <9bb82a26-c0e7-4e3f-abce-0ef07e1cff66@gmail.com>
Date: Wed, 22 Oct 2025 09:22:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: sukrut heroorkar <hsukrut3@gmail.com>
References: <20251018053029.226506-1-hsukrut3@gmail.com>
 <c2e85681-7ce8-43e3-ba08-63f8b854c8c7@gmail.com>
 <CAHCkknr6o_9zO+DYRaf-W7C46r17JUf2MFnPLm1dik=ei=LxcA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAHCkknr6o_9zO+DYRaf-W7C46r17JUf2MFnPLm1dik=ei=LxcA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/19/25 05:42, sukrut heroorkar wrote: > Hi David, > On
 Sun, Oct 19, 2025 at 12:50 AM David Hunter > wrote: >> >> On 10/18/25 01:30,
 Sukrut Heroorkar wrote: >>> Tested-by: syzbot+4b717071f1eecb2 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [david.hunter.linux(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.42 listed in wl.mailspike.net]
X-Headers-End: 1vBYnX-0005ce-07
Subject: Re: [Jfs-discussion] [PATCH] jfs: validate budmin to prevent
 shift-out-of-bounds in dbAllocAG()
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
From: David Hunter via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: David Hunter <david.hunter.linux@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>,
 "open list:JFS FILESYSTEM" <jfs-discussion@lists.sourceforge.net>,
 Edward Adam Davis <eadavis@qq.com>,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com,
 Vasiliy Kovalev <kovalev@altlinux.org>, skhan@linux.foundation.org,
 Arnaud Lecomte <contact@arnaud-lcm.com>,
 Nihar Chaithanya <niharchaithanya@gmail.com>, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMTAvMTkvMjUgMDU6NDIsIHN1a3J1dCBoZXJvb3JrYXIgd3JvdGU6Cj4gSGkgRGF2aWQsCj4g
T24gU3VuLCBPY3QgMTksIDIwMjUgYXQgMTI6NTDigK9BTSBEYXZpZCBIdW50ZXIKPiA8ZGF2aWQu
aHVudGVyLmxpbnV4QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDEwLzE4LzI1IDAxOjMwLCBT
dWtydXQgSGVyb29ya2FyIHdyb3RlOgo+Pj4gVGVzdGVkLWJ5OiBzeXpib3QrNGI3MTcwNzFmMWVl
Y2IyOTcyZGZAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+Pgo+Pgo+PiBIZXkgU3VrcnV0LAo+
Pgo+PiBEaWQgeW91IGRvIGFueSBvdGhlciB0ZXN0aW5nIG90aGVyIHRoYW4gc3l6Ym90IHRlc3Rp
bmc/Cj4gSSBhbHNvIHVzZWQgdGhlIEMgcmVwcm9kdWNlciB0byB0ZXN0IG15IGZpeCBsb2NhbGx5
IHdpdGggUUVNVSBhbmQgaXQKPiBubyBsb25nZXIgdHJpZ2dlcnMgZXJyb3IuIERvIHlvdSByZWNv
bW1lbmQgYW55Cj4gb3RoZXIgdGVzdHM/IFBsZWFzZSBsZXQgbWUga25vdy4KPiBUaGFua3MsCj4g
U3VrcnV0Lgo+PiBUaGFua3MsCj4+IERhdmlkIEh1bnRlcgoKCkhleSBTdWtydXQsCgpZb3UgYWx3
YXlzIG5lZWQgdG8gZG8gdGVzdGluZyB0byBlbnN1cmUgdGhhdCB5b3VyIGNvZGUgZG9lcyBub3Qg
YnJpbmcgaW4KcmVncmVzc2lvbnMgaW50byB0aGUga2VybmVsLiBJZiBkb2luZyB0aGluZ3MgdG8g
ZmlsZSBzeXN0ZW1zLCB4ZnN0ZXN0cwppcyBhdCBsZWFzdCB0aGUgYmFzaWMgdGVzdGluZyB0aGF0
IHlvdSBzaG91bGQgZG8uIFlvdSBjYW4gYWxzbyBzZWFyY2ggdG8Kc2VlIGlmIGFueSBvdGhlciBw
dWJsaWNseSB0b29scyBhcmUgYXZhaWxhYmxlIGFuZC9vciBhcHBsaWNhYmxlLCBidXQKeGZzdGVz
dHMgYXJlIHRoZSBtaW5pbXVtLgoKVGhhbmtzLApEYXZpZCBIdW50ZXIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
