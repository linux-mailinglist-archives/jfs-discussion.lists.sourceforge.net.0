Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF50565AB17
	for <lists+jfs-discussion@lfdr.de>; Sun,  1 Jan 2023 20:03:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pC3c0-0000yJ-UV;
	Sun, 01 Jan 2023 19:03:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kari.argillander@gmail.com>) id 1pC3by-0000y9-7w;
 Sun, 01 Jan 2023 19:03:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K6wDacrJSpTsknmwskfhwVqCZnFzjzGGKQ7wij8Me7s=; b=gqOPHUlZkzN58zxCHsUVtcdhrc
 1vEDqeMnG6qYmeI3aafSQJzkYJH4yHjnJMZC/iFYiqNvYrY81vSIqG9oC78Jk1DbfWOEQthcfJchc
 jh1F4l8CDFNzvMosgbfjQzCf+9UEKfbFzRpkA2Ew3pwtmrHQ6IgpZR+Y9cux4JD/aRcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K6wDacrJSpTsknmwskfhwVqCZnFzjzGGKQ7wij8Me7s=; b=EKBW5vAgs9cbjF2uDB87XSCPC9
 79vg44E8zNy0ADmbmRhnrY+biJFGGtxZz5V8jQqCIFY2JArBMHvMl5OWoFy56dVhU7I7JaH9Bp+nL
 XneUgFVHHOtAXntKOfuwH9FrlZ5p5ZEkIIJ4E9KClDfNhDgvtxtWfCzn2Fxg+7f1NJfU=;
Received: from mail-qt1-f181.google.com ([209.85.160.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pC3bx-001XV0-LX; Sun, 01 Jan 2023 19:03:10 +0000
Received: by mail-qt1-f181.google.com with SMTP id h26so21072900qtu.2;
 Sun, 01 Jan 2023 11:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=K6wDacrJSpTsknmwskfhwVqCZnFzjzGGKQ7wij8Me7s=;
 b=JYpgYJtj9Hf6o8YTLmD3rHArOVoJmFrJ6u5c6HYihE/nhdCx4v+XxbS8XWVFwYqU87
 DtmGlswL37AWuB8dcw4kKsq8DT3CSISXO2YbMG//wktN5DPcyKiNv05e4Wn6dWwp9Bjc
 HVmMsTBpLn00gVFnw9ub1O/TgqqZEv7XKxcY0NvpoI+AnBkKhP6rgOJvqxQY/HnpRVZI
 9fSPwe8l7eRcCjHWT+Dsaiczh8KLBNKzfmmiyr52cokws91kkk3wzmd+hcjjlqOF3RE7
 f4oWoohjdkV/tfTT7V7y/C26MGJ9BEf3OE/JA5F9OKnMIlvwcCAAYsTGUhWleZ9RT6ih
 II0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=K6wDacrJSpTsknmwskfhwVqCZnFzjzGGKQ7wij8Me7s=;
 b=F+TiUnt5NQauuMkms2FE88K833RFG22byhAJGkad5RtHvg7B86MqjcWw7RmRZDsaxW
 Tj7zztbR7EXnzxcQ8Uxm1ynF6afQ0OixBm1eBl6bWBn/zuHFFDV/bEw4TLNUkRz6aMON
 F7GnpEDtVjTJVpTnQAkCX72/fnIfdrbkcJq2B0asApOcuYBue49HBGYpLfT63Y4ekWE4
 WG6Fpry2FPviPAIGZ33K+75oKof1PDEBup68+wfqUNrCwEztXsVgjv9uEXnjbxJoSnKv
 2M+2kLXFUGKPREe+jdowD2TQvblKpUFw+tiod3I3QBCe8ykT9hy7WNxyH6zliDW4+CLA
 Pwtw==
X-Gm-Message-State: AFqh2kqCzbpleW7KChbbtqV44l7CAy0zwuu2yke251vcL0bpVxAT9FVN
 FLeYY+P3lGAptVk11SdNKTsVFcAotf2trd8hAxc=
X-Google-Smtp-Source: AMrXdXuoiamQbXK7XE/uZbmqtrBwujG4kbI3KZqiZKdeo3cQQ8je0TmPLv64BPmoh1zb7un0yK6BgICnAPZiakd/JSA=
X-Received: by 2002:ac8:4913:0:b0:3ab:88cb:97cb with SMTP id
 e19-20020ac84913000000b003ab88cb97cbmr773944qtq.436.1672599783803; Sun, 01
 Jan 2023 11:03:03 -0800 (PST)
MIME-Version: 1.0
References: <20221226142150.13324-1-pali@kernel.org>
 <20221226142150.13324-4-pali@kernel.org>
In-Reply-To: <20221226142150.13324-4-pali@kernel.org>
From: Kari Argillander <kari.argillander@gmail.com>
Date: Sun, 1 Jan 2023 21:02:46 +0200
Message-ID: <CAC=eVgS7weRq7S16MpTyx9eZm=2s+OZhm6Ko75Z6bmjsHH-7Yw@mail.gmail.com>
To: =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  26.12.2022 klo 16.22 Pali Rohár (pali@kernel.org) wrote:
   > > Other fs drivers are using iocharset= mount option for specifying charset.
    > So mark iocharset= mount option as preferred and deprecate nl [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [kari.argillander[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.181 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.181 listed in wl.mailspike.net]
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pC3bx-001XV0-LX
Subject: Re: [Jfs-discussion] [RFC PATCH v2 03/18] ntfs: Undeprecate
 iocharset= mount option
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Pavel Machek <pavel@ucw.cz>,
 linux-cifs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Anton Altaparmakov <anton@tuxera.com>, Salah Triki <salah.triki@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Luis de Bethencourt <luisbg@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, Paulo Alcantara <pc@cjr.nz>,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

MjYuMTIuMjAyMiBrbG8gMTYuMjIgUGFsaSBSb2jDoXIgKHBhbGlAa2VybmVsLm9yZykgd3JvdGU6
Cj4KPiBPdGhlciBmcyBkcml2ZXJzIGFyZSB1c2luZyBpb2NoYXJzZXQ9IG1vdW50IG9wdGlvbiBm
b3Igc3BlY2lmeWluZyBjaGFyc2V0Lgo+IFNvIG1hcmsgaW9jaGFyc2V0PSBtb3VudCBvcHRpb24g
YXMgcHJlZmVycmVkIGFuZCBkZXByZWNhdGUgbmxzPSBtb3VudAo+IG9wdGlvbi4KCnNuaXAuCgo+
IGRpZmYgLS1naXQgYS9mcy9udGZzL3N1cGVyLmMgYi9mcy9udGZzL3N1cGVyLmMKCnNuaXAuCgo+
IEBAIC0yMTgsMTAgKzIxMywxMCBAQCBzdGF0aWMgYm9vbCBwYXJzZV9vcHRpb25zKG50ZnNfdm9s
dW1lICp2b2wsIGNoYXIgKm9wdCkKPiAgICAgICAgICAgICAgICAgfSBlbHNlIGlmICghc3RyY21w
KHAsICJ1dGY4IikpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBib29sIHZhbCA9IGZhbHNl
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIG50ZnNfd2FybmluZyh2b2wtPnNiLCAiT3B0aW9u
IHV0ZjggaXMgbm8gbG9uZ2VyICIKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJzdXBwb3J0ZWQsIHVzaW5nIG9wdGlvbiBubHM9dXRmOC4gUGxlYXNlICIKPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJ1c2Ugb3B0aW9uIG5scz11dGY4IGluIHRoZSBmdXR1
cmUgYW5kICIKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtYWtlIHN1cmUg
dXRmOCBpcyBjb21waWxlZCBlaXRoZXIgYXMgYSAiCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAibW9kdWxlIG9yIGludG8gdGhlIGtlcm5lbC4iKTsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJzdXBwb3J0ZWQsIHVzaW5nIG9wdGlvbiBpb2NoYXJzZXQ9
dXRmOC4gIgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIlBsZWFzZSB1c2Ug
b3B0aW9uIGlvY2hhcnNldD11dGY4IGluIHRoZSAiCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiZnV0dXJlIGFuZCBtYWtlIHN1cmUgdXRmOCBpcyBjb21waWxlZCAiCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZWl0aGVyIGFzIGEgbW9kdWxlIG9yIGlu
dG8gdGhlIGtlcm5lbC4iKTsKCldlIGRvIG5vdCBoYXZlIHRvIG1ha2Ugc3VyZSB1dGY4IGlzIGNv
bXBpbGVkIGFueW1vcmUgYXMgaXQgImFsd2F5cyBpcyIgcmlnaHQ/Cgo+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGlmICghdiB8fCAhKnYpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB2YWwgPSB0cnVlOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGVsc2UgaWYgKCFzaW1wbGVf
Z2V0Ym9vbCh2LCAmdmFsKSkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
