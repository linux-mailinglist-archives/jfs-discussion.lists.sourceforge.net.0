Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA226C5936
	for <lists+jfs-discussion@lfdr.de>; Wed, 22 Mar 2023 23:02:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pf6Wy-0007AX-48;
	Wed, 22 Mar 2023 22:02:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nogikh@google.com>) id 1pf6RL-0000YW-9H
 for jfs-discussion@lists.sourceforge.net;
 Wed, 22 Mar 2023 21:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3wEKZhlQAu726bgeMuDzkySzeNEKVGJce+bxSvYEcNM=; b=kRIfdBMVWrXcOdIhO75bqlpOJv
 BpG1dujjkfg/jctQhGv9zBGmB9PGvXkm9+0964/wJJ5WHkK9WGT6WaA1I2ge2GQa4jZGDaHy70RLa
 Rrcs8PiyLDWHCx+c4YBkR2HR65tvopD1yrXEsYcyKWQG+Nhzz0ReVqbij2cSY3kr3Yc4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3wEKZhlQAu726bgeMuDzkySzeNEKVGJce+bxSvYEcNM=; b=ZfZOlR0VkOD3PYD1Ov8q7eG+xc
 LhIERWTR1V5pCVeVmU5aFf3x/RlIJ4uB96jgN80zTW4P9CM3f1zD4Ou2HoK59LUSGmiroXteQ92+f
 g4H3MpLqhZjgh8mqqkiyzBJRA5mzjPU59pGrmnMCh75xpKnVarvTfHKQpxZQo7XivluM=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pf6RM-00H2Qo-HY for jfs-discussion@lists.sourceforge.net;
 Wed, 22 Mar 2023 21:56:17 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-1a1b23f49e2so53365ad.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 22 Mar 2023 14:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679522171;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3wEKZhlQAu726bgeMuDzkySzeNEKVGJce+bxSvYEcNM=;
 b=NiJqxvId719WC6ZfAINWUrznmVWAIvDS3Gwb5N76EmczOJua4y6DU7/3HcoV5r0HwR
 XpOjxbl8eJWoLg5Va7LR7oal1UfJ0kwKIJJ5QJS6yabCUssZPxkl22GHjjAF+xf7mKwD
 /G/y9x+mH6kh5v1nObFbWrHy97/PuBo7npWCMG61ywzib2Nj1ezp8dKSLH13UMfdud0m
 Nhvz55K1AaLSOEW+XI29yvtvvGiX/jT79SfEpfk/bzVE2CXL5H0E9eZaEg5IKLdWC5ty
 yQ+62fjOGdlet4G+ypO0dhvYxQk9Jc8c2m+eiX5sS1GZnjSowjl1ho4ir7MJxOlNY0Wq
 vZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679522171;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3wEKZhlQAu726bgeMuDzkySzeNEKVGJce+bxSvYEcNM=;
 b=URqtLKs2AyFpTMaGMSwv+AHABEDOmhD2HTvLOR9PEMFCoXo1CIt9VT1Go/jDt4yWJc
 fy/cg9zwu1gScvoDiuwnH9Y47x575m3mCUY2U6nhL/QmVqawT6P6tnzDGLGauZw8Zb4V
 ukV+SG9Z6rWBBqUuOtzG7HbkaudrB5i/+F9W7s5XeyVf8E9qZamWcN9WdTHwqu0nJbHo
 YWBqXajEmrVeMcKwnqzgqobO/SAYO1xJNbnPng0MvXSmSC5voN8FNjzpiO3Z6DCdqO4u
 OVE1ob38UzNUYCi6BTxTvram9ng8GZZr+QL/DdD64vDN75qzegoFMGwbMa+49ChLZj4p
 zdNw==
X-Gm-Message-State: AAQBX9eH9wbqeo185caHhk9cHWHoZaxOX6xoU+nu3s9uAlmPA2ME6kFF
 usbiFE0AZuxpvGQ3ON7WBN4QtKmRApXZz5AR8ibVnGOByC3F2nUSsx6UHHG/
X-Google-Smtp-Source: AK7set8dAA9X5jZ4SI5t4EGhpF9Z/S8IrtQBBb3s3Aj9WOlWnWvbXjv7wWMrfprsfCBL8Jw6QggtqaxE+q0hlQRygkI=
X-Received: by 2002:a05:622a:1702:b0:3bc:d1b5:8e31 with SMTP id
 h2-20020a05622a170200b003bcd1b58e31mr470500qtk.19.1679520669697; Wed, 22 Mar
 2023 14:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000000ece5005eaa8f1d1@google.com>
 <0000000000007af84a05f77fa920@google.com>
In-Reply-To: <0000000000007af84a05f77fa920@google.com>
Date: Wed, 22 Mar 2023 22:30:58 +0100
Message-ID: <CANp29Y5825vdNCe1JUmasczU5AkNPKKWBzPUmjbNxKj3EapG4w@mail.gmail.com>
To: syzbot <syzbot+b9ba793adebb63e56dba@syzkaller.appspotmail.com>
X-Spam-Score: -13.2 (-------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 22, 2023 at 5:29 PM syzbot <syzbot+b9ba793adebb63e56dba@syzkaller.appspotmail.com>
    wrote: > > syzbot suspects this issue was fixed by commit: > > commit fad376fce0af58deebc5075b8539dc05b
    [...] 
 
 Content analysis details:   (-13.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.178 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
                             white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  2.5 SORTED_RECIPS          Recipient list is sorted by address
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.178 listed in wl.mailspike.net]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
                             Match
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1pf6RM-00H2Qo-HY
X-Mailman-Approved-At: Wed, 22 Mar 2023 22:02:02 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbAllocBits
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
From: Aleksandr Nogikh via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Aleksandr Nogikh <nogikh@google.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 liushixin2@huawei.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgNToyOeKAr1BNIHN5emJvdAo8c3l6Ym90K2I5YmE3OTNh
ZGViYjYzZTU2ZGJhQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20+IHdyb3RlOgo+Cj4gc3l6Ym90
IHN1c3BlY3RzIHRoaXMgaXNzdWUgd2FzIGZpeGVkIGJ5IGNvbW1pdDoKPgo+IGNvbW1pdCBmYWQz
NzZmY2UwYWY1OGRlZWJjNTA3NWI4NTM5ZGMwNWJmNjM5YWYzCj4gQXV0aG9yOiBMaXUgU2hpeGlu
IHZpYSBKZnMtZGlzY3Vzc2lvbiA8amZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0
Pgo+IERhdGU6ICAgVGh1IE5vdiAzIDAzOjAxOjU5IDIwMjIgKzAwMDAKPgo+ICAgICBmcy9qZnM6
IGZpeCBzaGlmdCBleHBvbmVudCBkYl9hZ2wyc2l6ZSBuZWdhdGl2ZQo+Cj4gYmlzZWN0aW9uIGxv
ZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTEyZDkwYmY2
YzgwMDAwCj4gc3RhcnQgY29tbWl0OiAgIGE2YWZhNDE5OWQzZCBNZXJnZSB0YWcgJ21haWxib3gt
djYuMScgb2YgZ2l0Oi8vZ2l0LmxpbmFyby4uLgo+IGdpdCB0cmVlOiAgICAgICB1cHN0cmVhbQo+
IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25maWc/
eD1kMTlmNWQxNjc4M2Y5MDEKPiBkYXNoYm9hcmQgbGluazogaHR0cHM6Ly9zeXprYWxsZXIuYXBw
c3BvdC5jb20vYnVnP2V4dGlkPWI5YmE3OTNhZGViYjYzZTU2ZGJhCj4gc3l6IHJlcHJvOiAgICAg
IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVwcm8uc3l6P3g9MTMyMmFlMzQ4ODAw
MDAKPiBDIHJlcHJvZHVjZXI6ICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC9yZXBy
by5jP3g9MTA0MDNjOTQ4ODAwMDAKPgo+IElmIHRoZSByZXN1bHQgbG9va3MgY29ycmVjdCwgcGxl
YXNlIG1hcmsgdGhlIGlzc3VlIGFzIGZpeGVkIGJ5IHJlcGx5aW5nIHdpdGg6Cj4KPiAjc3l6IGZp
eDogZnMvamZzOiBmaXggc2hpZnQgZXhwb25lbnQgZGJfYWdsMnNpemUgbmVnYXRpdmUKPgoKCkxv
b2tzIHJlYXNvbmFibGUuCgojc3l6IGZpeDogZnMvamZzOiBmaXggc2hpZnQgZXhwb25lbnQgZGJf
YWdsMnNpemUgbmVnYXRpdmUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
