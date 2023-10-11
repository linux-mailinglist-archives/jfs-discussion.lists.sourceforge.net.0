Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9137C5092
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 12:51:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqWoT-0003Oh-Kx;
	Wed, 11 Oct 2023 10:51:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qqWoS-0003Oa-7n
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 10:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OA4VMlVoeOMyOhtKxhGjb50TdmzbdywYsQIBV+11vPc=; b=V1ebjNDqpgIi119QlkkPynByg8
 xuvGuEawoltJcIX1pTD5CA2j78lVnjK7PzU0aiyEsF/oqkk8BnQoaDpvu1fGl9tgCCQ6bS97PF5jT
 SzN+gjISNv1NCLj6bEqQNGMsTd7SUbCNkFFN9I/X04oqcAOeTtVO0QXc4i5QdwLUBKc0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OA4VMlVoeOMyOhtKxhGjb50TdmzbdywYsQIBV+11vPc=; b=T+PmSVzgX3AleLBgN/lCgWBQ7c
 aADPVu4KaQErGjNsfJImAWeJw2gc1kDaQ2gMHci5+ZOn+IUaVFGtLofKTOYax1enjADloPssRz1W7
 9+kRRDUu9sBQ+66PG6cs3WULVMw2Du0vq/Kz2jYDwoU7DP560Z77M4LO4AsD5Sr9Ie9Y=;
Received: from mail-lj1-f172.google.com ([209.85.208.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqWoM-000449-KT for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 10:51:35 +0000
Received: by mail-lj1-f172.google.com with SMTP id
 38308e7fff4ca-2c1886777d9so79898011fa.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 11 Oct 2023 03:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1697021484; x=1697626284; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OA4VMlVoeOMyOhtKxhGjb50TdmzbdywYsQIBV+11vPc=;
 b=dnth/gjXxUz2heWhdbgw6hVAbVg7hL/Cb/tYfmvP1IVRxGWREBWlFjU66NPRbAMdtv
 Sn/Adx6gAJmdbOemDSxBLpWY/kZfh9AZFAFYfXcSU6L+miIzRSm5y9dIU4ec2UzMtlJF
 5LRxvRuc/sNFsEHiT53Yvw5Ksy1UnmcojWiVdlqWlgh2UGg0ne2P/f9dR38yNJgz9vpw
 BV6yT7hPu4F8t2Favtrnl+ShsJnQ2Z9Caf/Uo+sVNx4RmSiAtiZDaJHbsdde1jQ/1uPg
 T2W9IL7PVQCxAC0o2Lhk9Kf9ecr6Kisb2qSCS1e4xki2nEmdAMr8Wa7x7yMfuaYeay9z
 187w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697021484; x=1697626284;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OA4VMlVoeOMyOhtKxhGjb50TdmzbdywYsQIBV+11vPc=;
 b=LKLVK8qPb5lOh6xDYRw+3RNGilvaqXlI9qKMrL3N+lqygFnXqhtwZ/8G97bF5IIsLE
 mZrvUt/6T3NB/2XiZx3Mtk4Wi9Kh6dJ4o+UXA3JFnWwGr3mxhoDzwLuFOEvAJZoVmVaa
 wf4l3AlYZ88DpvFV8CdJw7OcoIV01crgEjALIc3svO9kZ/jmIY/bW/UrFwim73y1/Czi
 FJNRcMxsMvj5c7yEkPUu/8XnTnpVbdW1BvGBxEb5bApfyUTOZPPVyN+K+VdXA5ttKpAx
 CvUAdafYEMnXfFs+Jfx2ngY6+lVkQg2Js3n9MV8PHYL/HtQBR3ECduxWLmXfoTbh5u6U
 rbSw==
X-Gm-Message-State: AOJu0YxRjJr/FfupM1ZFKfA2YfMXpEXYbQ48ktYntI+shDpJd39sHRXU
 0jP5C34rXuFgkbEj/+TmQ90ur5UoTgtS+yn2AQwHPQ==
X-Google-Smtp-Source: AGHT+IGyLfs+WkrEIobRRB6LgrkT6il+FVpPUfzkIGExXLDR7euxzATM6T+qlV7Ejvi7bqqDUXFwlj14PNASEvLGAW0=
X-Received: by 2002:a2e:3309:0:b0:2bf:fb49:6619 with SMTP id
 d9-20020a2e3309000000b002bffb496619mr16986300ljc.23.1697021484028; Wed, 11
 Oct 2023 03:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
In-Reply-To: <20231011100541.sfn3prgtmp7hk2oj@quack3>
Date: Wed, 11 Oct 2023 12:51:12 +0200
Message-ID: <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Oct 11, 2023 at 12:05 PM Jan Kara <jack@suse.cz>
    wrote: > So I've checked some more and the kernel doc comments before > mode_strip_umask()
    and vfs_prepare_mode() make it pretty obvious - al [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.172 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqWoM-000449-KT
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
 linux-ext4@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTEsIDIwMjMgYXQgMTI6MDXigK9QTSBKYW4gS2FyYSA8amFja0BzdXNlLmN6
PiB3cm90ZToKPiBTbyBJJ3ZlIGNoZWNrZWQgc29tZSBtb3JlIGFuZCB0aGUga2VybmVsIGRvYyBj
b21tZW50cyBiZWZvcmUKPiBtb2RlX3N0cmlwX3VtYXNrKCkgYW5kIHZmc19wcmVwYXJlX21vZGUo
KSBtYWtlIGl0IHByZXR0eSBvYnZpb3VzIC0gYWxsCj4gcGF0aHMgY3JlYXRpbmcgbmV3IGlub2Rl
cyBtdXN0IGJlIGNhbGxpbmcgdmZzX3ByZXBhcmVfbW9kZSgpLiBBcyBhIHJlc3VsdAo+IG1vZGVf
c3RyaXBfdW1hc2soKSB3aGljaCBoYW5kbGVzIHVtYXNrIHN0cmlwcGluZyBmb3IgZmlsZXN5c3Rl
bXMgbm90Cj4gc3VwcG9ydGluZyBwb3NpeCBBQ0xzLiBGb3IgZmlsZXN5c3RlbXMgdGhhdCBkbyBz
dXBwb3J0IEFDTHMsCj4gcG9zaXhfYWNsX2NyZWF0ZSgpIG11c3QgYmUgY2FsbCBhbmQgdGhhdCBo
YW5kbGVzIHVtYXNrIHN0cmlwcGluZy4gU28geW91cgo+IGZpeCBzaG91bGQgbm90IGJlIG5lZWRl
ZC4gQ0NlZCBzb21lIHJlbGV2YW50IHBlb3BsZSBmb3IgY29uZmlybWF0aW9uLgoKVGhhbmtzLCBK
YW4uIERvIHlvdSB0aGluayB0aGUgZG9jdW1lbnRhdGlvbiBpcyBvYnZpb3VzIGVub3VnaCwgb3IK
c2hhbGwgSSBsb29rIGFyb3VuZCBhbmQgdHJ5IHRvIGltcHJvdmUgdGhlIGRvY3VtZW50YXRpb24/
IEknbSBub3QgYSBGUwpleHBlcnQsIHNvIGl0IG1heSBiZSBqdXN0IG15IGZhdWx0IHRoYXQgaXQg
Y29uZnVzZWQgbWUuLi4uIEkganVzdAphbmFseXplZCB0aGUgT19UTVBGSUxFIHZ1bG5lcmFiaWxp
dHkgZm91ciB5ZWFycyBhZ28gKGJlY2F1c2UgaXQgd2FzCnJlcG9ydGVkIHRvIG1lIGFzIHRoZSBt
YWludGFpbmVyIG9mIGEgdXNlcnNwYWNlIHNvZnR3YXJlKS4KCkFwYXJ0IGZyb20gbXkgZG91YnRz
IHRoYXQgdGhpcyBBUEkgY29udHJhY3QgaXMgdG9vIGVycm9yIHByb25lLCBJJ20Kbm90IHF1aXRl
IHN1cmUgaWYgYWxsIGZpbGVzeXN0ZW1zIHJlYWxseSBpbXBsZW1lbnQgaXQgcHJvcGVybHkuCgpG
b3IgZXhhbXBsZSwgb3ZlcmxheWZzIHVuY29uZGl0aW9uYWxseSBzZXRzIFNCX1BPU0lYQUNMLCBl
dmVuIGlmIHRoZQprZXJuZWwgaGFzIG5vIEFDTCBzdXBwb3J0LiBXb3VsZCB0aGlzIGlnbm9yZSB0
aGUgdW1hc2s/IEknbSBub3Qgc3VyZSwKb3ZlcmxheWZzIGlzIGEgc3BlY2lhbCBiZWFzdC4KVGhl
biB0aGVyZSdzIG9yYW5nZWZzIHdoaWNoIGFsbG93cyBzZXR0aW5nIHRoZSAiYWNsIiBtb3VudCBv
cHRpb24gKGFuZAp0aHVzIFNCX1BPU0lYQUNMKSBldmVuIGlmIHRoZSBrZXJuZWwgaGFzIG5vIEFD
TCBzdXBwb3J0LiBTYW1lIGZvciBnZnMyCmFuZCBtYXliZSBjaWZzLCBtYXliZSBtb3JlLCBJIGRp
ZG4ndCBjaGVjayB0aGVtIGFsbC4KClRoZSAibWFpbnN0cmVhbSIgZmlsZXN5c3RlbXMgbGlrZSBl
eHQ0IHNlZW0gdG8gYmUgaW1wbGVtZW50ZWQKcHJvcGVybHksIHRob3VnaCB0aGlzIGlzIHN0aWxs
IHRvbyBmcmFnaWxlIGZvciBteSB0YXN0ZS4uLiBleHQ0IGhhcwp0aGUgU0JfUE9TSVhBQ0wgY29k
ZSBldmVuIGlmIHRoZXJlJ3Mgbm8ga2VybmVsIEFDTCBzdXBwb3J0LCBidXQgaXQgaXMKbm90IHJl
YWNoYWJsZSBiZWNhdXNlIEVYVDRfTU9VTlRfUE9TSVhfQUNMIGNhbm5vdCBiZSBzZXQgZnJvbQp1
c2Vyc3BhY2UgaW4gdGhhdCBjYXNlLiBUaGUgY29kZSBsb29rcyBzdXNwaWNpb3VzLCBidXQgaXMg
b2theSBpbiB0aGUKZW5kIC0gc3RpbGwgbm90IG15IHRhc3RlLgoKSSBzZWUgc28gbXVjaCByZWR1
bmRhbnQgY29kZSByZWdhcmRpbmcgdGhlICJhY2wiIG1vdW50IG9wdGlvbiBpbiBhbGwKZmlsZXN5
c3RlbXMuIEkgYmVsaWV2ZSB0aGUgQVBJIHNob3VsZCBiZSBkZXNpZ25lZCBpbiBhIHdheSB0aGF0
IGl0IGlzCnNhZmUtYnktZGVmYXVsdCwgYW5kIHNob3VsZG4ndCBuZWVkIHZlcnkgY2FyZWZ1bCBj
b25zaWRlcmF0aW9ucyBpbgplYWNoIGFuZCBldmVyeSBmaWxlc3lzdGVtLCBvciBlbHNlIGFsbCBm
aWxlc3lzdGVtcyByZXBlYXQgdGhlIHNhbWUKbWlzdGFrZXMgdW50aWwgdGhlIGxhc3Qgb25lIGdl
dHMgZml4ZWQuCgpNYXgKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL2pmcy1kaXNjdXNzaW9uCg==
