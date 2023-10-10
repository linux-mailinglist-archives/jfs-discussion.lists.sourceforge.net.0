Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D6E7BFD24
	for <lists+jfs-discussion@lfdr.de>; Tue, 10 Oct 2023 15:18:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqCcL-0000NS-7E;
	Tue, 10 Oct 2023 13:17:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qqCcG-0000NL-HD
 for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Oct 2023 13:17:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Rj0zCJLxFxuY18T9CXGM+ChnBkFd0bFOQHJtGjdWNT8=; b=meL1LEMJus6S+OTb6o0/AFWfhh
 wD389GrKK5UCnfGrZsajCSx7eq7/UwWurIJpaRvgW1M20RlDzhbDeEEEywgMYz4iazV1zai91qYpC
 bJiLw/D1qQotVw2RTluwKdm4sBkzlNcylPrGzD+FYquUAolusygFyf+GH7bOs/X1ZlGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rj0zCJLxFxuY18T9CXGM+ChnBkFd0bFOQHJtGjdWNT8=; b=Z3q8p6iBp4fhW1Litz4D1CCDE8
 E/3Eil8Vh2LAzW0nhAksDXnk8t7Pe0WmONreOhb50lxWs9TSyQM0R6mSA2GjZJXf2fyso65qbWuzx
 xFWbYPQVIyCN16IpxdYVLttW64/L5QCEANd10GnWasArsRpt4wOm4mhc0MvVmwpMuAko=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqCcB-0005jL-4d for jfs-discussion@lists.sourceforge.net;
 Tue, 10 Oct 2023 13:17:37 +0000
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-2bff776fe0bso73074201fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 10 Oct 2023 06:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1696943848; x=1697548648; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Rj0zCJLxFxuY18T9CXGM+ChnBkFd0bFOQHJtGjdWNT8=;
 b=AtffShrHFX192Cvg0RbB2M3lwOzC1GpkVql1OviG4obeaqgfisf3QTcw5j1P442oJf
 WgwDztav7smTv/xLffYd74/RRWAwD/Eu3E4uxuBZ1IqpgUgAeLFc8U8Ysn6qbaXHfMsl
 CLzra09F4hSIxKPABZbHiTEu5w3ISyb1AYnV9liiqmzoaiU/cBiyzbwFvR/NNKLxLLff
 YA0A0C69VQAHLMGocuhUP52YEnd90IOO17uSJ1AcikfDKYN/oY0ubgSjhDR8zvfacM2D
 2htRo8AV5OLdGKQFF6HETImGKOjRV63eQ0+mjdpJPL0lj5Z74ZZtnM3Rd9E6YPSsb/xv
 MBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696943848; x=1697548648;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Rj0zCJLxFxuY18T9CXGM+ChnBkFd0bFOQHJtGjdWNT8=;
 b=mUwFcPHxmp/imL2t1rNf6sfDWHTRib+b2gSjd6W3C2jIn8xYTUp23tWsBLQLA0nVeI
 Uzq3EBChgasY8tKZJGn94pGP1Q8eKZ/Ay0JjXyrpQwOxkZq5VjrEnpxN0h56D9fJ3hs4
 XVo9XWsY4LD2X5EheG1cVjbLiM4edMwe14m9P99wTO0rHiL5votvwlcI5AeHTicS9hLP
 RHsoLDx/Yp+e/qc78GRdLzxoSs3qwI9GwNxUgqNSvtwmGpkkpvDxVR48YHmm5SU7Vsul
 ABKaYJsg+HaV5PdrX+5nGYrjeFofW0NZvAXIhImDYHcvIXTKOfnkrYJHmDZL8sPcAdBP
 ZDCA==
X-Gm-Message-State: AOJu0YyyvcUjtkBSbQOg3JEyd8I2J2x/yWhKnhvssFmBP9R3HltNMVW8
 ZGaCY3FvWnRfnAGy1Y7UdvPlqIYjIelMdU8RTImxfg==
X-Google-Smtp-Source: AGHT+IGGVlQDBhrlBJqhiIVf8wFhCZ8pGvbeyBAZQTIxQn4G76kVKajgzn/YFCNaVntfPjfr/aIqhkL2fqIzF86KIno=
X-Received: by 2002:a2e:8816:0:b0:2bc:db99:1775 with SMTP id
 x22-20020a2e8816000000b002bcdb991775mr15348520ljh.26.1696943848691; Tue, 10
 Oct 2023 06:17:28 -0700 (PDT)
MIME-Version: 1.0
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
In-Reply-To: <20231010131125.3uyfkqbcetfcqsve@quack3>
Date: Tue, 10 Oct 2023 15:17:17 +0200
Message-ID: <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Oct 10, 2023 at 3:11 PM Jan Kara <jack@suse.cz>
   wrote: > Thanks for the updated changelog! But as I'm looking into VFS code
    isn't > this already handled by mode_strip_umask() / vfs_prepare_m [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqCcB-0005jL-4d
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
From: Max Kellermann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Max Kellermann <max.kellermann@ionos.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Jan Kara <jack@suse.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgMzoxMeKAr1BNIEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+
IHdyb3RlOgo+IFRoYW5rcyBmb3IgdGhlIHVwZGF0ZWQgY2hhbmdlbG9nISBCdXQgYXMgSSdtIGxv
b2tpbmcgaW50byBWRlMgY29kZSBpc24ndAo+IHRoaXMgYWxyZWFkeSBoYW5kbGVkIGJ5IG1vZGVf
c3RyaXBfdW1hc2soKSAvIHZmc19wcmVwYXJlX21vZGUoKSBpbgo+IGZzL25hbWVpLmM/IEJlY2F1
c2UgcG9zaXhfYWNsX2NyZWF0ZSgpIGRvZXNuJ3QgZG8gYW55dGhpbmcgdG8gJ21vZGUnIGZvcgo+
ICFJU19QT1NJWEFDTCgpIGZpbGVzeXN0ZW1zIGVpdGhlci4gU28gYXQgbGVhc3QgZXh0MiAod2hl
cmUgSSd2ZSBjaGVja2VkCj4gdGhlIG1vdW50IG9wdGlvbiBoYW5kbGluZykgZG9lcyBzZWVtIHRv
IGhhdmUgdW1hc2sgcHJvcGVybHkgYXBwbGllZCBpbiBhbGwKPiB0aGUgY2FzZXMuIEJ1dCBJIG1p
Z2h0IGJlIG1pc3Npbmcgc29tZXRoaW5nLi4uCgpJJ20gbm90IHN1cmUgZWl0aGVyLiBJIHdhcyBo
b3BpbmcgdGhlIFZGUyBleHBlcnRzIGNvdWxkIHRlbGwgc29tZXRoaW5nCmFib3V0IGhvdyB0aGlz
IEFQSSBpcyBzdXBwb3NlZCB0byBiZSB1c2VkIGFuZCB3aG9zZSByZXNwb25zaWJpbGl0eSBpdApp
cyB0byBhcHBseSB0aGUgdW1hc2suIFRoZXJlIHVzZWQgdG8gYmUgc29tZSBjb25mdXNpb24gaW4g
dGhlIGNvZGUsIHRvCnRoZSBwb2ludCBpdCB3YXMgbWlzc2luZyBjb21wbGV0ZWx5IGZvciBPX1RN
UEZJTEUuIEknbSBzdGlsbCBzb21ld2hhdApjb25mdXNlZC4gTWF5YmUgdGhpcyBpcyBhIGNoYW5j
ZSB0byBjbGVhciB0aGlzIGNvbmZ1c2lvbiB1cCBhbmQgdGhlbgpkb2N1bWVudCBpdD8KCkkgd2lz
aCB0aGVyZSB3YXMgb25lIGNlbnRyYWwgcGxhY2UgdG8gYXBwbHkgdGhlIHVtYXNrLCBhbmQgbm90
IHNwcmVhZAppdCBhcm91bmQgdHdvIChvciBtb3JlPykgZGlmZmVyZW50IGNvZGUgbG9jYXRpb25z
LCBkZXBlbmRpbmcgb24Kd2hldGhlciB0aGVyZSdzIGFuIEFDTC4gRm9yIG15IHRhc3RlLCB0aGF0
IHNvcnQgb2YgcG9saWN5IGlzIHRvbyBlcnJvcgpwcm9uZSBmb3Igc29tZXRoaW5nIGFzIHNlbnNp
dGl2ZSBhcyB1bWFza3MuIEFmdGVyIHdlIGFscmVhZHkgaGFkIHRoZQpPX1RNUEZJTEUgdnVsbmVy
YWJpbGl0eSAod2hpY2ggd2FzIG9ubHkgZml4ZWQgbGFzdCB5ZWFyLCB0aHJlZQp5ZWFycyghKSBh
ZnRlciBJIHJlcG9ydGVkIGl0KS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
