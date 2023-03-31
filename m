Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A3A6D1AA8
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 10:44:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piAMt-0006Mp-Et;
	Fri, 31 Mar 2023 08:44:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nogikh@google.com>) id 1piAMo-0006L1-Te
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 08:44:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sha7c++P1pbeS2BqNK6x5hml1dJwu4esM9ohuBhGxoo=; b=DOXrpHf1AScaoJpxBVa7lNjFge
 9ARiVGes0pxwfgiK7gsmiTk77cx8z+5RN3fInx+YF8M57n/+sAk1iXDnCcj1QOmHw4pErT/YckfW5
 gZzmDfORjZYMUpsMl7hliwQCijKRAr5O0GGkXTn8qqeWCBROMedd0xSRgicRvs4f1plY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sha7c++P1pbeS2BqNK6x5hml1dJwu4esM9ohuBhGxoo=; b=Uw4xga213poIetQue5Z0Z6WS3z
 +gPn2bjXCcdd29+kdTysHx7OxZsBsITkOF+30hhnKaxvNMrgKbtS/W0Od5wUWDoUUrL6Z+St3xg2i
 o4x20hmGcJPEsYeb5NPKhdwYEocwQLwSPHuO8VOUangjU7wiQshOb/TjwBCmjONFI+kU=;
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1piAMj-0002xC-UP for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 08:44:13 +0000
Received: by mail-qt1-f178.google.com with SMTP id
 d75a77b69052e-3e390e23f83so663931cf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 01:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1680252244;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sha7c++P1pbeS2BqNK6x5hml1dJwu4esM9ohuBhGxoo=;
 b=lNYvkbIyWPH+TukSN5yijUu/JrmZj5WLsnvNYR2WMPTr/aAoGX4PBhqjDnocmACo/T
 MKxWcIAMY6g3Qj3EA7bH3uhenyiYlZLrcq47lMizoYpId8Y00zJXLJhsXqzYJUDCI+Cs
 nJFAiwfBkcqXwhCkReUQoQbazemGfu/2fNZZdHzwCN8a/LD6dFtSVYxkOmw8Ts/TZsD9
 geCQiwZK6Gadn3rKi2GqtqZonAv/8GNP8y8jMIYB2MnziogexhLHL9zEHNcY8w3arIpM
 ORlmLAp2o9A8/h4lzpencXFRzCRdmDOFVaEetAa+suLQmmE+ripVLYdvVUFqjg4VtSDS
 M9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680252244;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sha7c++P1pbeS2BqNK6x5hml1dJwu4esM9ohuBhGxoo=;
 b=w2fR/UP+OvoBp1ce5nIaneQRf9d9aSl2qoMciFoJQOsVVafqpaf542zJq7o8GjvB2V
 IFrmiG+zwkONzFJzFOrD1btJXx10U/qBW42QxwA+UGr+UxQYO3xHJjcxirr8LUJD5jat
 O348fFRBUBx6L+vQXlLw1V77ul1YH25X5T/ix4aNrthA0po8XG+FFTwN/0ID+UhOLnd4
 ZGTWXi1YCd6+hCSr9QghY17OnyzecbweU1G+QbVXaCc7XpdOC5hXMVAR+g+KFbfQUicN
 efTNArp8vwVVZXxL5yAU9juTiXQLwXOS0oFaQ+qRoDf1hN0vBKO9deYbOKZ/b8scsCq8
 sReg==
X-Gm-Message-State: AAQBX9d/kznxYBZi4J1WhnRFf5A41qyWHv1LnMuQ89lPOzsz+Bu42ku/
 Syo9OfbZY4KCGP7MVumFdlQqlBbqNmoJpDRsmFtw0w==
X-Google-Smtp-Source: AKy350b8nraY3tqqEiP3oP5jd8OLxt+sQatka0/Et5K9qmgE0sibhdHo4mg2zz3tsXHVyCIrioMNFjdncGojggKz9ac=
X-Received: by 2002:a05:622a:189a:b0:3df:6cbb:c76 with SMTP id
 v26-20020a05622a189a00b003df6cbb0c76mr199176qtc.13.1680252244119; Fri, 31 Mar
 2023 01:44:04 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000093079705ea9aada2@google.com>
 <0000000000004ee9b405f82355d8@google.com>
In-Reply-To: <0000000000004ee9b405f82355d8@google.com>
Date: Fri, 31 Mar 2023 10:43:50 +0200
Message-ID: <CANp29Y7wQccVBGJM_jJzrszzkE9wiHOhjdYoaPtzB=0WP0BbDA@mail.gmail.com>
To: syzbot <syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com>
X-Spam-Score: -13.2 (-------------)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Mar 30, 2023 at 9:45 PM syzbot <syzbot+7edb85bc97be9f350d90@syzkaller.appspotmail.com>
    wrote: > > syzbot suspects this issue was fixed by commit: > > commit fad376fce0af58deebc5075b8539dc05b
    [...] 
 
 Content analysis details:   (-13.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
                             white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  2.5 SORTED_RECIPS          Recipient list is sorted by address
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
                             welcome-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.178 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.178 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
                             Match
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1piAMj-0002xC-UP
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbFindCtl
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

T24gVGh1LCBNYXIgMzAsIDIwMjMgYXQgOTo0NeKAr1BNIHN5emJvdAo8c3l6Ym90KzdlZGI4NWJj
OTdiZTlmMzUwZDkwQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20+IHdyb3RlOgo+Cj4gc3l6Ym90
IHN1c3BlY3RzIHRoaXMgaXNzdWUgd2FzIGZpeGVkIGJ5IGNvbW1pdDoKPgo+IGNvbW1pdCBmYWQz
NzZmY2UwYWY1OGRlZWJjNTA3NWI4NTM5ZGMwNWJmNjM5YWYzCj4gQXV0aG9yOiBMaXUgU2hpeGlu
IHZpYSBKZnMtZGlzY3Vzc2lvbiA8amZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0
Pgo+IERhdGU6ICAgVGh1IE5vdiAzIDAzOjAxOjU5IDIwMjIgKzAwMDAKPgo+ICAgICBmcy9qZnM6
IGZpeCBzaGlmdCBleHBvbmVudCBkYl9hZ2wyc2l6ZSBuZWdhdGl2ZQo+Cj4gYmlzZWN0aW9uIGxv
ZzogIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvYmlzZWN0LnR4dD94PTE0NmQ3NGE1
YzgwMDAwCj4gc3RhcnQgY29tbWl0OiAgIGIyMjliNmNhNWFiYiBNZXJnZSB0YWcgJ3BlcmYtdG9v
bHMtZml4ZXMtZm9yLXY2LjEtMjAyMi0xMC0uLgo+IGdpdCB0cmVlOiAgICAgICB1cHN0cmVhbQo+
IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5jb25maWc/
eD1hNjZjNmM2NzNmYjU1NWU4Cj4gZGFzaGJvYXJkIGxpbms6IGh0dHBzOi8vc3l6a2FsbGVyLmFw
cHNwb3QuY29tL2J1Zz9leHRpZD03ZWRiODViYzk3YmU5ZjM1MGQ5MAo+IHN5eiByZXBybzogICAg
ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3JlcHJvLnN5ej94PTE2ZDU4MTdhODgw
MDAwCj4gQyByZXByb2R1Y2VyOiAgIGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcmVw
cm8uYz94PTE1ZDY4Y2RlODgwMDAwCj4KPiBJZiB0aGUgcmVzdWx0IGxvb2tzIGNvcnJlY3QsIHBs
ZWFzZSBtYXJrIHRoZSBpc3N1ZSBhcyBmaXhlZCBieSByZXBseWluZyB3aXRoOgo+Cj4gI3N5eiBm
aXg6IGZzL2pmczogZml4IHNoaWZ0IGV4cG9uZW50IGRiX2FnbDJzaXplIG5lZ2F0aXZlCgpJdCBt
aWdodCB3ZWxsIGJlIHBvc3NpYmxlLiBUaGUgcGF0Y2ggaW1wcm92ZXMgdGhlIHZhbGlkYXRpb24g
b2YKZGJfYWdsMnNpemUgcGFyYW1ldGVyLCB3aGljaCBhZmZlY3RzIHRoZSBleGVjdXRpb24gc29t
ZSBmcmFtZXMgdXAgaW4KdGhlIGNyYXNoIHN0YWNrIHRyYWNlOgpodHRwczovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9mcy9q
ZnMvamZzX2RtYXAuYz9pZD02ZDM2YzcyOGJjMmUyZDYzMmY0YjBkZWEwMGRmNTUzMmUyMGRmZGFi
I243MjkKCiNzeXogZml4OiBmcy9qZnM6IGZpeCBzaGlmdCBleHBvbmVudCBkYl9hZ2wyc2l6ZSBu
ZWdhdGl2ZQoKPgo+IEZvciBpbmZvcm1hdGlvbiBhYm91dCBiaXNlY3Rpb24gcHJvY2VzcyBzZWU6
IGh0dHBzOi8vZ29vLmdsL3Rwc21FSiNiaXNlY3Rpb24KPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApK
ZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
